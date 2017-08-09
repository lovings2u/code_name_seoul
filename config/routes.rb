Rails.application.routes.draw do
  devise_for :players
  root 'home#index'
  get '/answer/:stage_id/:answer' => 'stage#answercheck'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end