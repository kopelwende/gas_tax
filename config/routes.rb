Rails.application.routes.draw do
  root to: 'gasolines#index'
  resources :gasolines, only: [:index, :new]
end
