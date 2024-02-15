Rails.application.routes.draw do
  # get 'home/index'
  # resources :posts
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  # get '/articles', to: 'articles#index', as: :articles #ArticlesController class ang hahanapin with index method

  
  # #new and create
  # get '/articles/new', to: 'articles#new', as: :new_article #add _path sa dulo ng variable
  # post '/articles', to: 'articles#create'
  
  # get '/articles/:id', to: 'articles#show', as: :article

  # #edit and update
  # get '/articles/:id/edit', to: 'articles#edit', as: :edit_article
  # patch '/articles/:id', to: 'articles#update', as: :update_article
  
  # delete '/articles/:id', to: 'articles#destroy', as: :destroy_article
  resources :articles
end
