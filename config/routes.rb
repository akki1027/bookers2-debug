Rails.application.routes.draw do
  root 'home#top'
  get 'home/about'
  get 'home/about' => 'homes#about', as: 'about'
  devise_for :users
  resources :books
  resources :users,only: [:show,:index,:edit,:update]
end