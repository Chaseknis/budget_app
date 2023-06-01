Rails.application.routes.draw do
  get '/splash', to: 'splash#home'
  
  devise_for :users, controllers: { registrations: 'users/registrations' }


  devise_scope :user do
    authenticated :user do
      root 'groups#index', as: :authenticated_root
    end
  
    unauthenticated do
      root "splash#home", as: :unauthenticated_root
    end
  end

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # # Add the route for "/groups"
  # resources :groups

  # Defines the root path route ("/")
  resources :users, only: [:index, :show, :new] do
    resources :groups, only: [:new, :create, :show, :index, :destroy]
    resources :expenses, only: [:new, :create, :index, :show, :destroy]
  end
end
