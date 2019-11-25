Rails.application.routes.draw do
  # get 'foods/index'
  # get 'foods/show'
  # get 'foods/new'
  # get 'foods/edit'
  # get 'customers/index'
  # get 'customers/show'
  # get 'customers/new'
  # get 'customers/edit'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :customers, only: [:index, :show, :new, :create, :edit, :update, :destroy] 
  resources :foods
end
