Rails.application.routes.draw do
  root "pages#home"
  post "/contato", to: "pages#contato"
  post "/guia", to: "pages#guia"
  resources :articles, only: [ :index, :show ]
end
