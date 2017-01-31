Rails.application.routes.draw do

  get 'appointments/index'

  get 'appointments/show'

  get 'appointments/new'

  get 'appointments/edit'

root 'leads#index'
resources :leads do
  resources :call_logs, only: [:create, :show, :destroy, :index]
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
