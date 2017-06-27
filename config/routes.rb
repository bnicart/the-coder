Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#index'

  resources :dashboard, only: [:index]
  resources :user, only: [:index]
  resources :usana do
    collection do
      get 'products'
    end
  end
  resources :events
  resources :til , only: [:index]

end
