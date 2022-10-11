Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    # resources :movies, only: [:show, :create, :index, :update, :destroy]    
    get 'movies', to: 'movies#index'
    post 'movies', to: 'movies#create'
    get 'movies/:id', to: 'movies#show'
    put 'movies/:id', to: 'movies#update'
    patch 'movies/:id', to: 'movies#update'
    delete 'movies/:id', to: 'movies#destroy'
  end
end
