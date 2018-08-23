Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :home do
    #
  end


  resources :searches do
    collection do
      get :result
      post :diagnosis
    end
  end

  resources :favorite
  
  # resorces :posts

  root to: 'home#index'
end