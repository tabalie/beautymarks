Rails.application.routes.draw do
  resources :beautymarks

  resources :topics

  devise_for :users

  get 'about' => 'welcome#about'

  root to: 'welcome#index'
end
