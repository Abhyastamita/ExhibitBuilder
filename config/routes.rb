Rails.application.routes.draw do
  resources :exhibit_digital_objects
  resources :exhibits
  resources :user_digital_objects
  devise_for :users
  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get 'my_objects', to: 'users#my_objects'
  get 'search_dpla', to: 'digital_objects#search'
end
