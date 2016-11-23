Rails.application.routes.draw do
  get 'welcome/index'

  resources :movies do
    resources :comments
  end

  root 'movies#index'
end
