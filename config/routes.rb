Rails.application.routes.draw do
	root to: "home#index"
  get '/convert', to: 'convert#show'
  get '/show', to: 'show#show'
  get '/getword', to: 'getword#show'
  get '/madlib', to: 'madlib#show'
end
