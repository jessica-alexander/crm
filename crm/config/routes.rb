Rails.application.routes.draw do


root 'leads#index'

resources :leads do
  resources :call_logs
  resources :appointments
end

resources :accounts
resources :users, only: [:new, :create, :delete]


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
