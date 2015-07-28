Rails.application.routes.draw do
   root to: 'home#index'
   get 'about' => 'home#about', as: :about

   get 'sign_up' => 'users#new', as: 'sign_up'
   post 'create' => 'users#create', as: :create_user
end
