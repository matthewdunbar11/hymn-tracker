Rails.application.routes.draw do
  resources :service_songs
  resources :services
  resources :service_types
  resources :songs
  resources :hymn_books
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'home#index'
end
