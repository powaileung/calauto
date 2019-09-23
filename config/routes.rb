Rails.application.routes.draw do
  devise_for :users
  root 'quotes#index'
  namespace :admin do
    resources :coupons, only: [:new, :create, :show]
  end
end
