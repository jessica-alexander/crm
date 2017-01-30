Rails.application.routes.draw do
  get 'account/index'

  get 'account/show'

  get 'account/new'

  get 'account/edit'

  get 'appointment/index'

  get 'appointment/show'

  get 'appointment/new'

  get 'appointment/edit'

  get 'lead/index'

  get 'lead/show'

  get 'lead/new'

  get 'lead/edit'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
