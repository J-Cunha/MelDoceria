Rails.application.routes.draw do
  resources :flavors
  resources :categories
  resources :products
  devise_for :users
  root to: 'welcome#index'
  get 'about_us', to: 'welcome#about_us', as: :about_us
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
