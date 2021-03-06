Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "static_pages#home"

  get "help" => "static_pages#help"

  get "about" => "static_pages#about"

  get "contact" => "static_pages#contact"

  get "games" => "static_pages#games"

  get "pratice_page" =>"pages#page1"

  get  'signup', to: 'users#new'

  delete 'logout', to: 'sessions#destroy'

  post  'signup_event', to:'events#create'

  resources :users

  resources :sessions, only: [:new,:create,:destroy]

  get "home_search", to:"static_pages#search"

end
