Rails.application.routes.draw do
  
  devise_for :users
  root "top#index"
  
  resources :teachers do
    collection do
      get 'search_child', defaults: { format: 'json' }
      get 'search_grandchild', defaults: { format: 'json' }
    end
    member do
      post "add", to: "clips#create"
    end
    resources :likes, only: [:create, :destroy]
    resources :clips, only: [:destroy]
  end
  resources :categories, only: [:index, :show]
  resources :users, only: :show
  get "users/:id/likes" => "users#likes"
end
