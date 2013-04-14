Barcode::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :only => [:new, :create]
  resources :session, :only => [:new, :create] do
    collection do
      delete :destroy
    end
  end
  resources :venues, :except => [:index, :show] do
    member do
      get "new_availabilities"
      post "create_availabilities"
    end
  end
  resources :availabilities, :only => [:edit, :update, :destroy]
end
