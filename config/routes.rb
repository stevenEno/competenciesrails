Rails.application.routes.draw do
  resources :internships
  resources :professionals
  resources :portfolios
  resources :projects
  devise_for :users, controllers: { registrations: "registrations" }
  resources :competencies

  #root 'home#index'
  root 'home#homepage'
  #get 'search/index'
  get '/search' => 'search#index', :as => 'search'
  get 'home/index'
  #get 'home/about'
  #get 'home/contact'
  #get 'home/help'
  get '/help', to: 'static_pages#help', as: 'help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
