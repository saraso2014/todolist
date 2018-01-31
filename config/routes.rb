Rails.application.routes.draw do
  devise_for :users
  root 'todolist#index'

  resources :projects do
    resources :tasks
  end
end
