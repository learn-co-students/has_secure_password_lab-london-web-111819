Rails.application.routes.draw do
  root 'welcome#home'
  resources :users, only: [:new, :create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/login' => 'sessions#create', as:'login_action'
  post '/logout' => 'sessions#destroy', as:'logout_action'
  get '/login' => 'sessions#new', as: 'login_form'
end