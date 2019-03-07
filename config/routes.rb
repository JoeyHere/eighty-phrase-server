Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :rooms, only: [:index, :show, :create, :update]
      resources :users, only: [:show, :create, :update, :destroy]
      resources :rounds, only: [:show, :create, :update, :index] #delete index when not needed
      resources :responses, only: [:create]
      resources :votes, only: [:create]
    end
  end
end
