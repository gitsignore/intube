Rails.application.routes.draw do
  get 'welcome/index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  get '/user' => 'users#show' , :as => 'user'
  get '/user/edit' => 'users#edit', :as => 'edit_user'
  patch '/user' => 'users#update', :as => 'update_user'

  resources :categories

  resources :movies do
    resources :comments
  end

  root 'movies#index'
end
