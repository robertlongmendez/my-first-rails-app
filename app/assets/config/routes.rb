Rails.application.routes.draw do
  root 'docs#home'

  get "/docs", to: "docs#home"

resources :docs, only: [:show, :index, :new, :create]

end