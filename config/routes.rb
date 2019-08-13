Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #main page chatroom
  root 'chatroom#index'
  #session
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  #messages
  post 'message', to: 'messages#create'
  #chatroom
  mount ActionCable.server, at: '/cable'
end
