Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :categories
  resources :shirts
  devise_for :users do
    get '/users/sign_out' => 'devise/sessions#destroy'
  end

  root 'home#index'
end
