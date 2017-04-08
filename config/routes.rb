Rails.application.routes.draw do
  devise_for :users

  get 'about' => 'posts#about'

  root 'posts#index'
end
