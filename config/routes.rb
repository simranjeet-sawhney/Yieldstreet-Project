Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post 'auth/login', to: 'authentication#authenticate'
  post 'auth/signup', to: 'users#create'
  post 'auth/abc', to: 'users#abc'

  get '/api' => redirect('/swagger/dist/index.html?url=/apidocs/api-docs.json')


end