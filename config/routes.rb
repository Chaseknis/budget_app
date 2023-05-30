Rails.application.routes.draw do
  devise_for :users
  get 'splash/home'
  resources :groups
  resources :expenses
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root to: 'splash#home'

end
