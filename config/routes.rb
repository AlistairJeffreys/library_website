Rails.application.routes.draw do
  root   'static_pages#home'
  get    '/home',    to: 'static_pages#home'
  get    '/help',    to: 'static_pages#help'
  get    '/about',   to: 'static_pages#about'
  get    '/contact', to: 'static_pages#contact'
  get    '/signup',  to: 'users#new'
  post   '/signup',  to: 'users#create'
  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  delete '/logout',  to: 'sessions#destroy'
  get 'books/new'
  get 'authors/new'
  resources :users do
    member do
      get :reserving, :borrowing
    end
  end
  resources :books
  resources :book_copies, only: [:create, :destroy] do
    member do
      get :reservers, :borrowers
    end
  end
  resources :reservations, only: [:create, :destroy]
  resources :borrows, only: [:create, :destroy]
  resources :authors
end
