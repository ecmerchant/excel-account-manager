Rails.application.routes.draw do
  get 'accounts/manage'
  get 'accounts/manage/:user/:pass' =>'accounts#manage'

  get 'accounts/regist'
  post 'accounts/regist'

  get 'accounts/list'
  post 'accounts/list'

  post 'accounts/manage'

  get 'accounts/delete/:account', to: 'accounts#delete'
  post 'accounts/delete'

  get 'accounts/check'
  get 'accounts/check/:user/:pass' =>'accounts#check'

  root :to => 'accounts#manage'

  get 'accounts/update'
  post 'accounts/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
