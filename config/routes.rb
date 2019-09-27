Rails.application.routes.draw do
  devise_for :students
  resources :wishlists
  resources :books
  resources :libraries
  resources :universities
  root to: 'main#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
