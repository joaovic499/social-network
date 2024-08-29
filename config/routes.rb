Rails.application.routes.draw do

  root "login#index"

  post '/logins', to: 'login#register'

  resources :logins, only: [:new, :create]

end
