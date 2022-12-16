Rails.application.routes.draw do
  get     "svien"    =>'svien#index'
  get     "login"    => "session#new"
  post    "login"    => "session#create"
  get     "logout"   => "session#destroy"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  resources :users
  get "register" => "users#new"
  # Defines the root path route ("/")
  # root "articles#index"
  resources :svien
  get '/search', to: 'svien#search'
  get '/delete', to: 'svien#destroy'
end
