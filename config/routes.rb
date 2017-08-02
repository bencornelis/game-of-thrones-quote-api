Rails.application.routes.draw do
  resources :quotes, only: [:index]
  resource :quote, only: [:show]
end
