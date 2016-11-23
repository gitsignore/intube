Rails.application.routes.draw do
  get 'welcome/index'

  resources :movies

  root 'movies#index'
end
