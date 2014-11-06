Rails.application.routes.draw do
  root to: "games#index", as: "root"
  
  resources :players, only: [:index, :show]
  
  resources :teams, only: [:index, :show]
  
  resources :games, only: [:index, :show]
end
