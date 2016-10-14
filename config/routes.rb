Rails.application.routes.draw do
  post '/rate' => 'rater#create', :as => 'rate'
  devise_for :users
  resources :words do
    resources :synonyms
    resources :notes
    resources :examples
  end

  resources :types

  get 'masonry', to: 'pages#masonry'
  get 'creation', to: 'pages#creation'
  get 'rating', to: 'pages#rating'
  get 'index', to: 'words#index'
  root "words#index"
end
