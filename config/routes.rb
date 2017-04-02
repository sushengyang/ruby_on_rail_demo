Rails.application.routes.draw do
  resources :loans
  root 'loans#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
