Rails.application.routes.draw do
  get 'welcome/index'
  resources :recipe_ingredients
  resources :ingredients
  resources :recipe_cookbooks
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
