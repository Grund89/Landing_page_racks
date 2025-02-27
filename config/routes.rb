Rails.application.routes.draw do
  root "pages#home"
  post "/contato", to: "pages#contato"
  resources :articles, only: [ :index, :show ]
end
