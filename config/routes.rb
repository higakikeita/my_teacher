Rails.application.routes.draw do
  
  root "top#index"
  
  resources :teachers, only: [:index,:new,:create,:show]
    collection do
      get 'search_child', defaults: { format: 'json' }
      get 'search_grandchild', defaults: { format: 'json' }
    end
  resources :categories, only: [:index, :show]
end
