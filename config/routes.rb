Rails.application.routes.draw do
  resources :games_platforms
  resources :platforms
  resources :games
  resources :settings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
