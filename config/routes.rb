Rails.application.routes.draw do
  resources :words
  
  get 'index', to: 'words#index'
  root "words#index"
end
