Rails.application.routes.draw do

  resources :pets, only: [ :create ]  do
    resources :medicals, only: [ :index, :create, :destroy ]
  end
  
  get 'all_pets', to: 'pets#all'

  root 'pets#index'
  
end
