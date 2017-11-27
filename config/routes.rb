Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  get 'home/index'

  get 'quantifications/index'

  get 'quantifications/edit'

  get 'quantifications/show'

  authenticate :user do
    resources :recipes, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :recipes, only: [:index, :show]

  authenticate :user do
    resources :ingredients, only: [:new, :create, :edit, :update, :destroy]
  end
  resources :ingredients, only: [:index, :show]

  resources :recipes
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
