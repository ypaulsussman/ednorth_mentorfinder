# For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  root to: 'static_pages#lander'
  devise_for :users
  
  get "/colleagues", to: 'application#search_colleagues'
  
end