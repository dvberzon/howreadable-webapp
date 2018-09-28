Rails.application.routes.draw do
  resources :responses
  resources :participants do
    resources :responses
  end
  root to: 'home#temproot'
  get 'home' => 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
