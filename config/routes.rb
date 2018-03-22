Rails.application.routes.draw do
  resources :mydbs
  get 'mydbs/homepage'
  get 'apiyoutube/authorize'
  post 'apiyoutube/ldetails'
  get 'apiyoutube/search' ,to: 'apiyoutube#search'
  post 'apiyoutube/search'
  root to: 'index#homepage'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
