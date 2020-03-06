Rails.application.routes.draw do
  get 'top/index'

  get 'teachers/index'

  root "top#index"
  resources :teachers, only: [:index,:new,:create]
end
