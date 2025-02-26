Rails.application.routes.draw do
  root "pages#home"
  post "/contato", to: "pages#contato"
end
