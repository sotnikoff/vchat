Rails.application.routes.draw do
  resources :chats, only: %i[create show]
  resources :messages
  root 'pages#index'
end
