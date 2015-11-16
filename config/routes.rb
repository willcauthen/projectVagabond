Rails.application.routes.draw do

  root to: 'cities#index'
  get "posts/:id", to: "posts#show", as: "post_show"

  get "/sign-in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

  resources :users do
    resources :posts do 
    end
  end

  resources :cities do
    resources :posts do 
    end
  end

  resources :posts do
    resources :cities
  end


# get "/posts/:id/edit", to: "post#edit", as: "post_edit"



  # resources :posts do
  #   resources :users, only: [:create]
  # end

  # get "/posts/new", to: "posts#new", as: "new_post"
  # post "/posts", to: "posts#create"
  
  # get "/users/:user_id/posts", to: "post#show"
  # , as: "user_posts"
  

# potentially unnecessary route
  # post "/posts/:post_id/users", to: "users#create", as: "post_users"

  # get "/sign-in", to: "sessions#new"
  # post "/sessions", to: "sessions#create"

  # get "/users", to: "users#index", as: "users"
  # get "/posts", to: "posts#index", as: "posts"

  # get "/cities", to: "cities#index"
  # get "/cities/new", to: "cities#new", as: "new_city"

  # post "/cities", to: "cities#create"

  # get "/users/:user_id/cities", to: "city_users#index", as: "user_cities"
  # # I believe we also need a get/and post posts for the cities
  # post "/cities/:city_id/users", to: "city_users#create", as: "city_users"

end
