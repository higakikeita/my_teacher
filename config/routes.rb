Rails.application.routes.draw do
  
  root "top#index"
  
  resources :teachers do
    collection do
      get 'search_child', defaults: { format: 'json' }
      get 'search_grandchild', defaults: { format: 'json' }
    end
  end
  resources :categories, only: [:index, :show]
  
end
