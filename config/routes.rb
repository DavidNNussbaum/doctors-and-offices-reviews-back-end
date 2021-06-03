Rails.application.routes.draw do
  resources :users
  resources :reviews
  resources :doctors do 
    resources :reviews, only: [:index]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


end
 