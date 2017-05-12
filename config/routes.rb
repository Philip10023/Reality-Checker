Rails.application.routes.draw do
  devise_for :views
  devise_for :users, controllers: { registrations: "registrations" }

  devise_scope :user do
    authenticated :user do
      root to: 'categories#index', as: :authenticated_root
      resources :categories, only: [:index, :new, :show, :create]
      resources :realities, only: [:index, :destroy]
      resources :favorites, only: [:index, :destroy]
      resources :users, except: [:new, :create]
    namespace :api do
      namespace :v1 do
        resources :categories, only: [:show]
        resources :realities, only: [:create, :update]
        resources :favorites, only: [:create]
      end
    end
  end

    resources :categories do
      resources :timers
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
