Rails.application.routes.draw do
  
  root 'profiledetails#index'
  devise_for :users

  resources :profiledetails # profile_details
  resources :books
  
  get 'welcome/about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
