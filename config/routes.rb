Rails.application.routes.draw do
  resources :responses
  resources :participants
  root to: 'home#temproot'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
