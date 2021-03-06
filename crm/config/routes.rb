Rails.application.routes.draw do

root 'leads#index'

resources :leads do
  resources :call_logs
  resources :appointments
end

resources :accounts
resources :users, only: [:new, :create, :delete]
resources :sessions, only: [:new, :create, :destroy]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
