Rails.application.routes.draw do
# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# Sets the root view for the main page to our post index. Goes to the posts controller and the index.html.erb view.
root 'posts#index'

# Sets a regular route. Goes to the pages controller and the about.html.erb view.
get 'about' => 'pages#about'

# Turns posts into a resourse. Then on command line run rake routes to create additional links.
resources :posts
end
