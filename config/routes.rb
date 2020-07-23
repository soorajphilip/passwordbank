Rails.application.routes.draw do
  resources :passwords
  # devise_scope :users do
  #   root 'devise/sessions#new'
  # end
  devise_for :users
  devise_scope :user do
    authenticated do
      root 'passwords#index'
    end

    unauthenticated do
      root 'devise/sessions#new', as: 'unauthenticated_root'
    end
  end
end

