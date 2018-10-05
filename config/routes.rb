Rails.application.routes.draw do
  # user
  devise_for :users
  
  # like
  # post '/articles/:id/like', to: 'likes#create'
  # delete '/articles/:id/dislike', to: 'likes#destroy'
  post '/articles/:id/like', to: 'likes#like_toggle'
  
  # article
  root to: 'articles#index'
  resources :articles
  
  # profile
  get '/my_profile' => 'profiles#show'
  get '/new_profile' => 'profiles#new'
  get '/create_profile' => 'profiles#create'
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit'
  get '/update_profile' => 'profiles#edit'
  patch '/update_profile' => 'profiles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
