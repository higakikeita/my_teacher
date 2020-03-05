Rails.application.routes.draw do
  get 'top/index'

  get 'teachers/index'

  root "top#index"
end
