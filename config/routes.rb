Rails.application.routes.draw do
  devise_for :users
  root to: "works#index"
  resources :users, only: [:show, :edit, :update]
  resources :works do
  collection do
    get :indextop
    end
  end
end
