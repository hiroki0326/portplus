Rails.application.routes.draw do
  devise_for :users
  root to: "works#index"
  resources :users, only: [:show]
  resources :works, only: [:index, :show, :create, :new] do
  collection do
    get :indextop
    end
  end
end
