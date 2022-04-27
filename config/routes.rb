Rails.application.routes.draw do
  get 'posts/index'
  get 'posts/show'
  get 'users/index'
  get 'users/show'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
