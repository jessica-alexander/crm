Rails.application.routes.draw do

  resources :accounts, :leads, :appointments

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
