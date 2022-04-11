Rails.application.routes.draw do
  resources :events, :voters

  root 'events#new'
end
