Rails.application.routes.draw do
  resources :related_dates
  resources :loans
  resources :borrowers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
