Rails.application.routes.draw do
  root 'homes#top'
  get '/home/about' => 'homes#about'
  devise_for :users
  resources :books, expect: [:new]
  resources :users, only: [:index, :show, :edit, :update]

end
