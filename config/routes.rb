Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  resources :dashboard, only: [:index]
  resources :user, only: [:index]
  resources :usana, only: [:index]
  resources :events
  resources :til , only: [:index]

end
