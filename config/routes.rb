Rails.application.routes.draw do



  devise_for :users
  root to: 'home#top'

 get 'home/about', as: :about
 resources :books, only: [:new, :create, :index, :edit, :show, :destroy, :update]
 resources :users, only: [:index, :show, :edit, :update]

end
