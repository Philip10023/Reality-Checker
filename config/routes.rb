Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'categories#index', as: :authenticated_root
      resources :categories, only: [:index, :new, :show, :create]
    end

    resources :reality_checks

    namespace :api do
      namespace :v1 do
        resources :reality_checks, only: [:index, :create, :show]
        resources :categories
      end
    end

    resources :categories

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
