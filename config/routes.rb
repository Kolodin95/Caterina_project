Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#landing'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items
  get "landing", to: "pages#landing"
  get "home", to: "pages#home"
end
