
Rails.application.routes.draw do
  resources :tasks, except: [:new, :edit]

  match "*path", to: "tasks#index", via: "get"

  root to: 'tasks#index'
end
