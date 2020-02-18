Rails.application.routes.draw do
  get 'users/index'
  get 'users/show/:id', to: 'users#show', as: 'user'
  devise_for :users
  root to: 'vices#index', as: 'home'
  resources :vices, only: [:show, :new, :create ] do
    resources :conferences, only: %i[show new create], shallow: true
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
