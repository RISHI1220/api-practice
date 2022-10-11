Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :api do
    # resources :movies, only: [:show, :create, :index, :update, :destroy]    
    # show all
    get 'movies', to: 'movies#index'

    # Show perticular using query or body parameter 
    get 'show', to: 'movies#show'
    # Show perticular using url parameter
    get 'show/:id', to: 'movies#show'

    # Create new record and pass parameters in body or query parameter
    post 'create', to: 'movies#create'
    
    # Update record using url id parameter and attrabute parameter in body or query
    put 'update/:id', to: 'movies#update'
    patch 'update/:id', to: 'movies#update'
    # Update record using id from query parameter or attrabutes parameters in body
    put 'update', to: 'movies#update'
    patch 'update', to: 'movies#update'
    
    # Delete record using if from url parameter
    delete 'delete/:id', to: 'movies#destroy'
    # Delete record using query or body paramter
    delete 'delete', to: 'movies#destroy'


    # Note id query parameter can also be send from body if not used strong parameter *******
  end
end
