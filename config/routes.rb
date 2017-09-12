Rails.application.routes.draw do
  get 'accounts/manage'
  get 'accounts/manage/:user/:pass' =>'accounts#manage'

  get 'accounts/regist'
  post 'accounts/regist'

  post 'accounts/manage'
  root :to => 'accounts#manage'

  get 'accounts/update'
  post 'accounts/update' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
