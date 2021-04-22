Rails.application.routes.draw do
  root 'musicmarks#index'
  
  get 'home/index'
  get 'categories/:id/api', to: 'categories#api', as: 'api'
  resources :musicmarks
  resources :categories
  resources :kinds

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
