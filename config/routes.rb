Rails.application.routes.draw do
  resources :bananas, only: [:create, :new]
  get '/', to: 'home#index'
end
