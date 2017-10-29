Rails.application.routes.draw do  
 

  mount Ckeditor::Engine => '/ckeditor'
  root to: 'home#index'
  get '/login' => 'portal/sessions#new'
  get '/logout' => 'portal/sessions#destroy'
 
  namespace :portal do
    resources :dashboard, only: [:index]
    resources :posts
    resources :settings, only: [:new, :create, :edit, :update]
    resources :notifications, only: [:index, :destroy]
    resources :messages, only: [:index, :show, :update, :destroy]
    resources :comments, only: [:index, :update, :destroy]
    resources :visitors, only: [:index, :destroy]
    resources :tags, except: [:index]
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
  end
  resources :home, only: [:index, :show]
  match 'dismiss_all_notifications', to: 'portal/notifications#delete_all', via: :delete
end
