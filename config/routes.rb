Rails.application.routes.draw do
  scope format: false do
    resources :voice, only: %i[show]
    resources :chats, only: %i[create show index]
    resources :messages, only: %i[create]
  end

  root 'chats#index'
end
