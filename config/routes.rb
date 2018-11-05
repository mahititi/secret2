Rails.application.routes.draw do
 get 'sessions/new'

get '/users/new'
get '/session/new'

resources :home
 #get '/help', to: 'static_pages#help'
 #get '/about', to: 'static_pages#about'
 #get '/contact', to: 'static_pages#contact'

 get "log_out" => "session#destroy", :as => "log_out"
 get "login" => "session#new", :as => "login"
 get "sign_up" => "users#new", :as => "sign_up"
 root :to => "users#new"
 resources :users
 resource :session
end
