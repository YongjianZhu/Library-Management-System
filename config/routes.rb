Rails.application.routes.draw do
<<<<<<< .merge_file_XXD5KS
  devise_for :students, controllers: {
      sessions: 'students/sessions',
      registrations: 'students/registrations'
  }
=======
  devise_for :users
  root to: 'main#index'
>>>>>>> .merge_file_223e0N
  resources :wishlists
  resources :books
  resources :libraries
  resources :universities


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
