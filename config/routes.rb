OmniauthSaluqiProvider::Application.routes.draw do

  use_doorkeeper
  get "/me" => "api#me"

  devise_for :users

  root to: "home#index"
end
