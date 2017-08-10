class StageController < ApplicationController
    before_action :authenticate_player!
    layout 'stage'

    def index
        # 주의사항 및 게임설명 페이지
    end    

    def game
        # 게임화면 페이지
        
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
end
