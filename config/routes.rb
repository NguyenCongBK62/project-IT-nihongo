Rails.application.routes.draw do
  resources :likes 
  resources :articles
  resources :comments
  devise_for :users
  get 'users/:id' => 'users#show', as: :user
  get "users" , to: "users#index"
  post "followers" => "followers#create", as: :follow_user
 # resources :followers, only:  :create
  delete 'users/:id' => 'followers#destroy'
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
