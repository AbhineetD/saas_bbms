Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  resources :contacts
  get 'new-donor', to: 'contacts#new'
  get 'users/show', to: 'users#show', as: 'users_show'
end
