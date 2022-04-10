Rails.application.routes.draw do
  resources :events, :voters

  root "event#new"
end
