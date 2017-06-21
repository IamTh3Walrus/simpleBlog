Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Sets the root view for the main page to our post index. Goes to the posts controller and the index.html.erb view.
# as: adds the about path to nav link.
root 'posts#index', as: 'home'

# Sets a regular route. Goes to the pages controller and the about.html.erb view. as: adds the about path to nav link.
get 'about' => 'pages#about', as: 'about'

# Turns posts into a resourse. Then on command line run rake routes to create additional links.
resources :posts do
  resources :comments
end
end
