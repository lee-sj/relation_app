Rails.application.routes.draw do
  
  # follow
  
  # Comment
  resources :comments, only: [:create, :destroy]
  
  # Participate
  resources :participates, only: [:new, :create, :edit, :update, :destory]
  
  # Jukebox
  get '/jukebox', to: 'jukebox#index'

  # song
  resources :songs
  post '/songs/:id/follow', to: 'follows#song_follow_toggle', as: 'song_follow'
  
  # artist
  resources :artists
  post '/artists/:id/follow', to: 'follows#artist_follow_toggle', as: 'artist_follow'
  
  # user
  devise_for :users
  # post '/users/:id/follow', to: 'follows#user_follow_toggle', as: 'user_follow'
  # like
  # post '/articles/:id/like', to: 'likes#create'
  # delete '/articles/:id/dislike', to: 'likes#destroy'
  post '/articles/:id/like', to: 'likes#like_toggle', as: 'like_article'
  
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
