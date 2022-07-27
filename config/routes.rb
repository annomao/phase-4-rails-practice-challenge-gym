Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :clients, only: [:index, :show, :create, :update] do
    resources :memberships, only: [:create]
  end
  resources :gyms
  resources :memberships, only: [:index]
end
