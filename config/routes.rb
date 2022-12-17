Rails.application.routes.draw do
  #get 'search/index'
  get '/search' => 'search#index', :as => 'search'
  resources :internships
  resources :professionals
  resources :portfolios
  resources :projects
  devise_for :users, controllers: { registrations: "registrations" }
  resources :competencies
  #get 'home/index'
  get 'home/about'
  #root 'home#index'
  root 'home#homepage'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
