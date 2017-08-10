class HomeController < ApplicationController
  before_filter :check, only: [:index]
  layout 'home'

  def index
    # 첫 메인 홈페이지
  end
  def intro
    # 인트로 페이지
  end
  def theme
    # 테마 소개 페이지
    @themes = Theme.all
  end
  def themeshow
    # @theme = Theme.find(params[:theme_id])
    themeid = params[:theme_id]
    teamid = params[:team_id]

    render "/home/themes/#{themeid}/#{teamid}/intro"
  end
  def ranking
    # 동영상 페이지

    # 나중에 랭킹
  end

  def getteam
    # 회원가입에서 테마 클릭하면 팀들 보내줌
    themeid = params[:theme_id]
    theme = Theme.where(id: themeid).first
    if theme.nil?
      redirect_to "/"
      return
    end
    @teams = theme.teams
  end

  private

  def check
    if player_signed_in?
      if current_player.currentstage == 0
        stagec = StageController.new
        stagec.request = request
        stagec.response = response
        stagec.index
      else
        stagec = StageController.new
        stagec.request = request
        stagec.response = response
        stagec.game
      end
    end
  end
end
