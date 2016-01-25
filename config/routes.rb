Rails.application.routes.draw do

  resources :bmarks

  resources :topics

  devise_for :users

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
