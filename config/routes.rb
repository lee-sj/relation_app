Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  get '/my_profile' => 'profiles#show'
  get '/new_profile' => 'profiles#new'
  post '/create_profile' => 'profiles#create'
  get '/edit_profile' => 'profiles#edit'
  patch '/update_profile' => 'profiles#update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
