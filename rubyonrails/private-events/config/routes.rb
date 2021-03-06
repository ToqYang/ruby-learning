Rails.application.routes.draw do
  #For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  devise_for :users
  root "events#index"
  resources :events
  resources :users, only: [:show, :edit, :create, :update, :destroy]
  resources :atteendes, only: [:create, :destroy, :update]
end
