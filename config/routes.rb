Rails.application.routes.draw do
  get '/about', to: 'static_pages#show', defaults: { title: 'About' }, as: :about
  get '/contact', to: 'static_pages#show', defaults: { title: 'Contact' }, as: :contact
  get 'home/index'
  get 'products/index'
  get 'products/show'
  get 'categories/index'
  get 'categories/show'
  root "home#index"

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  get '/static_pages/:title', to: 'static_pages#show', as: :static_page
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check
  resources :categories do
    resources :products
  end
  resources :products
  # Defines the root path route ("/")
  # root "posts#index"
end
