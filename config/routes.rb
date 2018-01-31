Rails.application.routes.draw do
  devise_for :users
  root 'todolist#index'
end
