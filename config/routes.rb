Rails.application.routes.draw do
  # get 'comments/new'
  # get 'comments/create'
  # put '/post/:id/like' to: 'posts#like',  as: 'like'
  resources :users, only: [:index, :show] do
  resources :posts, only: [:index, :show, :create, :new] do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create]
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
