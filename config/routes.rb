Rails.application.routes.draw do
  devise_for :users
  resources :passwords
  devise_scope :user do
    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end

    authenticated :user do
      root 'passwords#index', as: :authenticated_root
    end
  end
end
