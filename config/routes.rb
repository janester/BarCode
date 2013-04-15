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
  resources :pub_crawls, :except => [:index] do
    collection do
      get "end_times"
      post "invite_friends"
    end
    member do
      post "join_crawl"
    end
  end
  resources :stops, :only => [:create] do
    collection do
      post "num_stops"
    end
  end

  resources :activities, :only => [:create]
end
