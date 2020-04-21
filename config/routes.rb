Rails.application.routes.draw do

  resources :galleries
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tweets
  devise_for :users
  as :user do
    get 'signin' => 'devise/sessions#new'
    delete 'signout' => 'devise/sessions#destroy'
    get 'signup' => 'devise/registrations#new'
    get 'profile' => 'devise/registrations#edit'
  end   
  get 'feed' =>'feed#show', as: 'feed'

  resources :users, only: :show, param: :username do
    member do
      post 'follow', to: 'follows#create'
      delete 'unfollow', to: 'follows#destroy'
    end
  end

  resources :items do
    member do
      post 'vote', to: 'votes#create'
      delete 'unvote', to: 'votes#destroy'
    end
  end
 
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contact_us'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
