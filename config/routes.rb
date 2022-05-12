Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root 'users#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
  
  resources :users do
  resources :posts do
    resources :comments, only: [:create, :new]
    resources :likes, only: [:create]
    end
  end

  get '/api/users/:user_id/posts', to: 'api#index_posts'
  get '/api/users/:user_id/posts/:post_id/comments', to: 'api#post_comments'
  post '/api/users/:user_id/posts/:post_id/comment', to: 'api#create_comments

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
end
