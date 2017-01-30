Rails.application.routes.draw do

  get 'call_log/index'

  get 'call_log/show'

  get 'call_log/new'

  get 'call_log/edit'

  resources :accounts, :leads, :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
