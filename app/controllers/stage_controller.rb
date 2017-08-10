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

        render 'stage/game', layout: 'stage'
    end

    def timer
        @left_time = time_diff(current_player.endtime - 9*3600, DateTime.now)
        render partial: 'stage/count', left_time: @left_time
    end

    def gethintbool
        # 힌트 받아올 수 있는지 확인하는 페이지
        stageid = params[:stage_id]

        # 상대방이 풀었는지 확인
        getbool = true

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
        stage = Stage.find(params[:stage_id])
        answer = params[:answer]

        respond_to do |format|
            if stage.answer == answer
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

    def gameending
        # 모든 문제를 제시간 안에 풀었을 때 나오는 화면
    end

    def gameover
        # 시간 다됐을 때 뜨는 화면
    end

    private

    def time_diff(start_time, end_time)
        seconds_diff = (start_time - end_time).to_i.abs

        days = seconds_diff / 86400 
        seconds_diff -= days * 86400

        hours = seconds_diff / 3600  
        seconds_diff -= hours * 3600

        minutes = seconds_diff / 60
        seconds_diff -= minutes * 60

        seconds = seconds_diff

        "%02d%02d%02d" % [ hours, minutes, seconds ]
        end
end
