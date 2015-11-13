Rails.application.routes.draw do

  root to: 'users#index'

  resources :users do
  	resources :posts
  end

  resources :cities do
  	resources :posts
  end

  get "/sign-in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  get "/users", to: "users#index", as: "users"
  get "/posts", to: "posts#index", as: "posts"

  get "/cities", to: "cities#index"
  get "/cities/new", to: "cities#new", as: "new_city"

  post "/cities", to: "cities#create"

  get "/users/:user_id/cities", to: "city_users#index", as: "user_cities"
  # I believe we also need a get/and post posts for the cities
  post "/cities/:city_id/users", to: "city_users#create", as: "city_users"

end

