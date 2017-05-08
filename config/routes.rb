Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'categories#index', as: :authenticated_root
      resources :categories, only: [:index, :new, :show, :create]
      resources :realities, only: [:index, :destroy]


    namespace :api do
      namespace :v1 do
        resources :categories, only: [:show]
        resources :realities, only: [:create, :update]
      end
    end
  end

    resources :categories

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end
end
