Rails.application.routes.draw do

  # get 'books/index'
  # get 'books/show'
  # get 'books/create'
  # get 'books/edit'
  # get 'books/update'
  # get 'books/destroy'
  devise_for :users
  root to: "homes#top"

    #get 'homes/about'
  get "home/about", to: "homes#about"
  resources :users, only: [:index, :show, :edit, :update]
  resources :books, only: [:index, :show, :create, :edit, :update, :destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
