Rails.application.routes.draw do
  get 'users/:username' =>'users#show', as: 'user'
  resources :items
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :tweets
  devise_for :users
  as :user do
    get 'signin' => 'devise/sessions#new'
    delete 'signout' => 'devise/sessions#destroy'
    get 'signup' => 'devise/registrations#new'
    get 'profile' => 'devise/registrations#edit'
  end
  root 'pages#home'
  get 'about' => 'pages#about'
  get 'contactus' => 'pages#contact_us'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
