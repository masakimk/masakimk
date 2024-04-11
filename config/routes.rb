Rails.application.routes.draw do
  resources :posts
  devise_for :users
  resources :users, only: [:show] 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  resources :tweets do
    resources :likes, only: [:create, :destroy]

resources :comments, only: [:create]

get 'tweets/item' => 'tweets#item'
  get 'tweets/track' => 'tweets#track'
  get 'tweets/character' => 'tweets#character'

  end

  root 'tweets#index'

  
  
end
