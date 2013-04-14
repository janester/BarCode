Barcode::Application.routes.draw do
  root :to => 'home#index'
  resources :users, :only => [:new, :create]
  resources :session, :only => [:new, :create] do
    collection do
      delete :destroy
    end
  end
end
