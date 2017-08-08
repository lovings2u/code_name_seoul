class StageController < ApplicationController
    before_action :authenticate_player!

    def index

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
