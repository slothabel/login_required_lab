Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :sessions, only: [:new, :create]
  post '/destroy', to: 'sessions#destroy'
  get '/secrets', to: 'secrets#show'
end


# sessions POST   /sessions(.:format)     sessions#create
# new_session GET    /sessions/new(.:format) sessions#new
#     session DELETE /sessions/:id(.:format) sessions#destroy
#      secret GET    /secrets(.:format)  secrets#show