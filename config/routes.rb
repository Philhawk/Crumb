Rails.application.routes.draw do

  root :to => 'pages#home'
  get '/users/edit' => 'users#edit', :as => :edit_user
  resources :users, :except => [:edit]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  
  get '/results' => 'recipes#results'

  get '/yummly' => 'recipes#yummly'

  get '/recipes/:id' => 'recipes#show', :as => 'recipe'
  get '/recipes/:id/add' => 'recipes#add'

end
