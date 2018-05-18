Rails.application.routes.draw do
  resources :chats, only: %i[create show index]
  resources :messages, only: %i[create]
  root 'chats#index'
end
