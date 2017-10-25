Rails.application.routes.draw do
  

  get '/login' => 'portal/sessions#new'
  get '/logout' => 'portal/sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :portal do
    resources :posts
    resources :comments, only: [:index, :update, :destroy]
    resources :tags, except: [:index]
    resources :sessions, only: [:new, :create, :destroy]
    resources :moderators, only: [:index, :edit, :update]
  end
end
