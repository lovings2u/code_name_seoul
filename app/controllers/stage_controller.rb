class StageController < ApplicationController
    before_action :authenticate_player!
    layout 'stage'

    def index
        if current_player.currentstage > 0
            game
        end
    end

    def game
        # 게임화면 페이지
        if current_player.currentstage == 0
            current_player.currentstage = 1
            current_player.save
        end
        @themeid = current_player.theme_id
        @teamid = current_player.team_id
        
        @times = []
        @times.append current_player.starttime.year
        @times.append current_player.starttime.month - 1
        @times.append current_player.starttime.day
        @times.append current_player.starttime.hour + 2
        @times.append current_player.starttime.min
        @times.append current_player.starttime.sec
        
         # Stage.find(current_player.currentstage)
        @current_stage = Team.find(@teamid).stages.find_by_number(current_player.currentstage)
        
        if @current_stage.nil?
          # 게임 엔딩
          render 'stage/gameending', layout: 'stage'
          return
        end

        # current_player.update(currentstage: 6)
        @before_stage = Team.find(@teamid).stages.find_by_number(current_player.currentstage-1)
        unless @before_stage.nil? || @before_stage.after_img.to_s.empty? || @before_stage.after_viewed
          render 'stage/afterscript', layout: 'stage'
        else
          unless @current_stage.is_viewed
            render 'stage/script', layout: 'stage'
          else
            render 'stage/game', layout: 'stage'
          end
        end
    end

    def script
      current_stage = Team.find(current_player.team_id).stages.find_by_number(current_player.currentstage)
      current_stage.update(is_viewed: true)

      redirect_to '/game'
    end

    def afterscript
      before_stage = Team.find(current_player.team_id).stages.find_by_number(current_player.currentstage-1)
      before_stage.update(after_viewed: true)

      redirect_to '/game'
    end

    def qrcode
      if current_player.currentstage == 13
        team_id = params[:team_id]
        if current_player.team_id != team_id.to_i
          current_player.currentstageup
        else
          redirect_to "/game"
        end
      else
        redirect_to "/game"
      end
    end

    def last
      @lastimg = Theme.first.teams.find(2).stages.find_by_number(14).q_img
    end

    def timer
        @left_time = time_diff(current_player.endtime - 9*3600, DateTime.now)
        render partial: 'stage/count', left_time: @left_time
    end

    def gethintbool

        getbool = false
        # 상대방이 풀었는지 확인
        anotherteam = Team.find(current_player.team.anotherteam)
        another = Player.find_by_team_id(anotherteam.id)
        if another.currentstage > current_player.currentstage
            getbool = true
        end

        # 결과 출력
        respond_to do |format|
            if getbool == true
                result = Hash.new
                result["result"] = "P"
                format.html { render xml: result.to_xml }
                format.xml { render xml: result.to_xml }
            else
                result = Hash.new
                result["result"] = "F"
                format.html { render xml: result.to_xml }
                format.xml { render xml: result.to_xml }
            end
        end
    end

    def questionpage
        # 게임 문제 레이아웃 HTML로 뿌려주는 API
        if params[:stage_id].nil?
            redirect_to :back
            return
        end

        stage = Stage.find(params[:stage_id])

        if stage.nil?
            redirect_to :back
            return
        end

        layoutstr = stage.questionlayout

        respond_to do |format|
            format.html { render layout: layoutstr }
        end
    end

    def answerpage
        # 게임 정답입력 레이아웃 HTML로 뿌려주는 API
        if params[:stage_id].nil?
            redirect_to :back
            return
        end

        stage = Stage.find(params[:stage_id])

        if stage.nil?
            redirect_to :back
            return
        end

        layoutstr = stage.answerlayout

        respond_to do |format|
            format.html { render layout: layoutstr }
        end
    end

    def answercheck
      stage = Team.find(current_player.team_id).stages.find_by_number(current_player.currentstage)
      answer = params[:answer]
      @stage_num = current_player.currentstage

      respond_to do |format|
        if stage.answer == answer
          @message = "P"
          current_player.currentstageup
          format.js
        else
          @message = "F"
          format.js
        end
      end
    end

    def answerchecklast
      answer = Theme.first.teams.find(2).stages.find_by_number(14).answer
      useranswer = params[:answer]
      
      if answer == useranswer
        players = Player.where(theme_id: Theme.first.id)

        @message = "P"
        @endtime = DateTime.now
        @lasttime = time_diff(players.first.starttime, @endtime)

        players.each do |player|
          player.update(currentstage: 14)
          player.update(endtime: @endtime)
        end
      end
    end

    def gameending
        # 모든 문제를 제시간 안에 풀었을 때 나오는 화면
    end

    def gameover
        # 시간 다됐을 때 뜨는 화면
    end

    def get_hint
      current_stage = Team.find(current_player.team_id).stages.find_by_number(current_player.currentstage)
      @h_img = current_stage.hint_img
      unless current_stage.hint_viewed
        current_player.hintcountdown
        current_stage.update(hint_viewed: true)
      end
      puts @h_img
      respond_to do |format|
        format.js
      end
    end

    def get_help
      current_stage = Team.find(current_player.team_id).stages.find_by_number(current_player.currentstage)
      @h_img = current_stage.help_img
      unless current_stage.help_viewed
        current_player.hintcountdown
        current_stage.update(help_viewed: true)
      end
      puts @h_img
      respond_to do |format|
        format.js
      end
    end

    private

    def time_diff(start_time, end_time)
      seconds_diff = (start_time.to_i - end_time.to_i).abs

      days = seconds_diff / 86400
      seconds_diff -= days * 86400

      hours = seconds_diff / 3600
      seconds_diff -= hours * 3600

      minutes = seconds_diff / 60
      seconds_diff -= minutes * 60

      seconds = seconds_diff

      "%02d시간 %02d분 %02d초" % [ hours, minutes, seconds ]
    end
end
