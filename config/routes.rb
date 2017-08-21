Rails.application.routes.draw do
  get 'accounts/manage'
  get 'accounts/manage/:user/:pass' =>'accounts#manage'
  post 'accounts/manage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
