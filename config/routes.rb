Rails.application.routes.draw do
  root 'login#show'
  resources :user
end
