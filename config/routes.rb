Rails.application.routes.draw do
    root :to => redirect('/index')
  get '/index', to: 'cloth#index'

  get '/show/:id', to: 'cloth#show'

  get '/search', to: 'cloth#search'

  get '/create', to: 'cloth#create'

  post '/cloth', to: 'cloth#createCloth'

  get '/search/:term', to: 'cloth#search'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
