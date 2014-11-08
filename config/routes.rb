Rails.application.routes.draw do
  root to: "games#index", as: "root"
  
  resources :players, only: [:index, :show]
  
  resources :teams, only: [:index, :show]
  
  resources :games, only: [:index, :show]
  
  get "daily_projections", to: "players#daily_projections", as: "daily_projections"
  
  get "entire_day_games/:date", to: "games#entire_day_games", as: "entire_day_games"
end
