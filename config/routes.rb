Rails.application.routes.draw do
  get 'teachers/index'

  root "teachers#index"
end
