Rails.application.routes.draw do

  root to: 'users#index'

  resources :users do
  	resources :posts
  end

  resources :cities do
  	resources :posts
  end

<<<<<<< HEAD
  get "/posts/new", to: "posts#new", as: "new_post"
  post "/posts", to: "posts#create"
  get "/users/:user_id/posts", to: "post_users#index", as: "user_posts"
  post "/posts/:post_id/users", to: "/post_user#create", as: "post_users"
=======
  get "/sign-in", to: "sessions#new"
  post "/sessions", to: "sessions#create"

end
>>>>>>> c38f14381d52fbf626e2e47b952bfb254fd9427c

end
