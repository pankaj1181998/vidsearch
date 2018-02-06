Rails.application.routes.draw do
  resources :vidlists
  get 'index/homepage'
  post 'apiyoutube/search'
  get 'apiyoutube/search'
  post 'apiyoutube/search'
  root to: 'index#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
