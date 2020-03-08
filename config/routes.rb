Rails.application.routes.draw do
  
  root "top#index"
  
  resources :teachers, only: [:index,:new,:create,:show]
  resources :categories, only: [:index, :show]
end
