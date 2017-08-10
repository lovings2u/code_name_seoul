Rails.application.routes.draw do
  devise_for :players
  
  root 'home#index'
  get '/intro' => 'home#intro'
  get '/themes' => 'home#theme'
  get '/themes/:theme_id/:team_id' => 'home#themeshow'
  get '/ranking' => 'home#ranking'

  get '/getteam/:theme_id' => 'home#getteam' 
  get '/game' => 'stage#index'
  post '/game' => 'stage#game'
  get '/timer' => 'stage#timer'

  post '/answer' => 'stage#answercheck'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end