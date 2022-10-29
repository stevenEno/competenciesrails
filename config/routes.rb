Rails.application.routes.draw do
  resources :professionals
  resources :portfolios
  resources :projects
  devise_for :users
  resources :competencies
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'home#homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
