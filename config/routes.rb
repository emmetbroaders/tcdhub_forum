Rails.application.routes.draw do
  devise_for :users
  resources :home do
  	resources :posts
  end	

  resources :posts do
  	resources :comments
  end


  root 'posts#index'
end
