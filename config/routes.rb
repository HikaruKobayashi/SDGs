Rails.application.routes.draw do
  root to: 'users#index.html.haml'
  resources :users
end
