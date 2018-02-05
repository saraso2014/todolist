Rails.application.routes.draw do
  devise_for :users
  root 'projects#index'

  resources :projects do
    resources :tasks do
      put 'priority', on: :member
      put 'complete', on: :member
    end
  end
  
end
