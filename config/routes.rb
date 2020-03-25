Rails.application.routes.draw do
  resources :mutters do
    collection do
      post :confirm
    end
  end
end
