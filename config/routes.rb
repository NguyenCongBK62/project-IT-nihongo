Rails.application.routes.draw do
  resources :articles
  devise_for :users
  get 'users/:id' => 'users#show', as: :user
  get "users" , to: "users#index"
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
