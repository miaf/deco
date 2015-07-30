Rails.application.routes.draw do
   root to: 'home#index'
   get 'about' => 'home#about', as: :about

   get 'sign_up' => 'users#new', as: 'sign_up'
   post 'create' => 'users#create', as: :create_user
   get 'log_in' => 'sessions#new', as: :log_in
   post 'log_in' => 'sessions#create', as: :create
   get 'log_out' => 'sessions#destroy', as: :log_out

   namespace :admin do
     resources :users
   end

   resources :users
end
