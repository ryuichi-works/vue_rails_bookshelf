Rails.application.routes.draw do

  get 'books/index'
  root to: 'home#index'
  resources :books, only: [:index]

  namespace :api do
    resources :books, only: [:show]
  end
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
