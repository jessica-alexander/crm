Rails.application.routes.draw do

  get 'accounts/index'

  get 'accounts/show'

  get 'accounts/new'

  get 'accounts/edit'

root 'leads#index'

resources :leads do
  resources :call_logs
  resources :appointments
end



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
