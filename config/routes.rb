Rails.application.routes.draw do

  # get 'books/index'
  root to: 'home#index'

  namespace :api do
    resources :books, only: [:index, :show, :create, :update, :destroy]
    post   'signup',  controller: :users,    action: :create
    post   'signin',  controller: :sessions, action: :create
    delete 'signin', controller: :sessions, action: :destroy
    post   'refresh', controller: :refresh, action: :create
  end
  # get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
