Rails.application.routes.draw do
  resources :users
  resources :patients,    only: [:create, :edit, :destroy]

  root to: 'homepage#home' #root_path

  get '/patients', to: 'patients#new'
  get '/show',     to: 'patients#show'
  delete 'patients', to: 'patients#destroy'

  get '/about',   to: 'homepage#about'
  get '/contact', to: 'homepage#contact'

  get '/signup',  to: 'users#new'
  get '/show',    to: 'users#show'
  post '/signup', to: 'users#create'

  get  '/login',    to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
