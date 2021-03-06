Rails.application.routes.draw do
  get 'plans/calculate'
  get 'plans/hybrid'

  get 'hybrid_simulation/new'
  get 'hybrid_simulation/result'
  get 'hybrid_simulation/details'

  resources :regions
  resources :instance_types
  resources :machine_types
  resources :providers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #
  root 'hybrid_simulation#new'
end
