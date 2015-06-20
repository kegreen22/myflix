Myflix::Application.routes.draw do
  get '/home', to: "videos#index"

  root to: "videos#index"

  get 'ui(/:action)', controller: 'ui'
  
end
