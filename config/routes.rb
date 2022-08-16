Rails.application.routes.draw do



  devise_for :users
  root to: 'homes#top'
  
 get 'homes/about', as: :about
 resources :books, only: [:new, :create, :index, :edit, :show, :destroy]
 resources :users, only: [:index, :show, :edit, :update]

end