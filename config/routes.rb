Rails.application.routes.draw do
  resources :passwords
  devise_for :users
  root 'passwords#index'
end

