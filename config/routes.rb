Rails.application.routes.draw do
  get 'items/create'
  resources :lists do
    resources :items
  end
  get 'site/index'
  root 'lists#index'
end
