Rails.application.routes.draw do
  

  namespace :admin do
    root to: 'home#index'
    resources :participants, only: [:index, :show, :destroy]
    resources :responses, only: [:index]
    resources :data_downloads, only: [:show]
  end

  resources :participants do
    resources :test_cases, only: [:new, :show] do
      member do
        get :complete
      end
    end
    resources :responses
  end

  root to: 'home#index'
  #root to: 'home#closed'
  get 'home' => 'home#index'
  get 'thankyou' => 'home#thankyou', as: :thankyou
  get 'closed' => 'home#closed'
  get 'start/:lang' => 'participants#new', as: :start
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
