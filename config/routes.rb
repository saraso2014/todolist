Rails.application.routes.draw do
  get 'sql/queries',     :as => 'queries'
  post "projects/:id/tasks/:id/edit"    => "tasks#update"

  devise_for :users
  root 'projects#index'

  resources :projects do
    resources :tasks do
      put 'priority', on: :member
      put 'complete', on: :member
    end
  end
  
end
