Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :video_games, only: [:index, :create, :update, :destroy]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
