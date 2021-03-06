Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home do
    #
  end

  resources :about

  resources :searches do
    collection do
      get :result
      post :diagnosis
    end
  end
  # resorces :posts

  resources :favorite do
    collection do
      get :edit

      post :delete
    end
  end
  
  # resorces :posts

  root to: 'home#index'
    end