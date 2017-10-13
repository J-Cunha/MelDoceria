Rails.application.routes.draw do
  resources :site_contatcts, as: :contacts
  resources :site_contatcts
  get '/contacts', to: 'site_contatcts#index'
  resources :product_sizes
  resources :flavors
  resources :categories
  resources :products
  #resources 'contacts', only: [:new, :create]

  devise_for :users
  root to: 'products#index'
  get 'about_us', to: 'welcome#about_us', as: :about_us
  get 'midia', to: 'welcome#midia', as: :midia
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
