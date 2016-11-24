Rails.application.routes.draw do
  get 'welcome/index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

  resources :categories

  resources :movies do
    resources :comments
  end

  root 'movies#index'
end
