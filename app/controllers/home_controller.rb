class HomeController < ApplicationController
  def index
    # 첫 메인 홈페이지
    @title = "메인 홈페이지"
  end
  def intro
    # 인트로 페이지
  end
  def theme
    # 테마 소개 페이지
    @themes = Theme.all
  end
  def ranking
    # 동영상 페이지

    # 나중에 랭킹
  end
end
