Rails.application.routes.draw do
  get '/convert', to: 'convert#show'
  get '/show', to: 'show#show'
end
