Rails.application.routes.draw do
  resources :borrowers
  resources :related_dates
  resources :loans
  root 'loans#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
