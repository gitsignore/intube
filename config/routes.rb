Rails.application.routes.draw do
  get 'welcome/index'

  resources :categories

  resources :movies do
    resources :comments
  end

  root 'movies#index'
end
