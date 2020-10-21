Rails.application.routes.draw do
  resources :owned_games_platforms
  resources :create_owned_games_platforms
  resources :create_join_table_games_platform_users
  resources :owned_games
  resources :create_join_table_owned_games
  resources :notes
  resources :games_platforms
  resources :platforms
  resources :games
  resources :settings
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
