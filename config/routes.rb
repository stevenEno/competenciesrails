Rails.application.routes.draw do
  devise_for :professionals
  devise_for :students
  devise_for :teachers
  devise_for :admins
  resources :admins
  resources :teachers
  resources :students
  resources :internships
  resources :professionals
  resources :portfolios
  resources :projects
  devise_for :users, controllers: { registrations: "registrations" }
  #devise_for :admins, controllers: { sessions: 'admins/sessions' }
  resources :competencies

  #root 'home#index'
  root 'home#homepage'
  #get 'search/index'
  get '/search' => 'search#index', :as => 'search'
  get 'home/index'
  patch "professionals/:id/modify_relationship", to: "professionals#modify_relationship", as: :professional_modify_relationship
  get "professionals/:id/connect_email", to: "professionals#connect_email", as: :professional_connect_email
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
