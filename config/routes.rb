Rails.application.routes.draw do
  
  namespace :admin do
    root to: 'participants#index'
    resources :participants, only: [:index, :show, :destroy]
    resources :responses, only: [:index]
  end

  resources :participants do
    resources :responses
  end

  root to: 'home#temproot'
  get 'home' => 'home#index'
  get 'thankyou' => 'home#thankyou', as: :thankyou
  get 'start/:lang' => 'participants#new', as: :start
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
