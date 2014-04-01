OmniauthSaluqiProvider::Application.routes.draw do

  use_doorkeeper
  get "/me" => "api#me"

  devise_for :users, controllers: { sessions: 'users/sessions' }

  root to: "home#index"
end
