Rails.application.routes.draw do
  resources :librarybooklists
  resources :borrowhistories
  resources :studentborrowlists
  resources :holdlists
  resources :wishlists
  resources :books
  resources :libraries
  resources :universities
  root to: 'main#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
