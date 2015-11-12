Rails.application.routes.draw do

  root to: 'users#index'

  resources :users do
  	resources :posts
  end

  resources :cities do
  	resources :posts
  end

  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create"

end

