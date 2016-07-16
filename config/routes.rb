Rails.application.routes.draw do
  get 'settings/show'

  get 'settings/update'

  root 'home#index'
  get '/settings', to: 'settings#show'
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
end
