Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home
  resources :searches do
    collection do
      get :result
      post :diagnosis
    end
  end
  resources :favorite do
    collection do
      get :edit
    end
  end
    
  

  root to: 'home#index'
end