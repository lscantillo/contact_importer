Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  post 'import', to: 'home#import'
  get 'show_fields', to: 'home#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
