Rails.application.routes.draw do
  
  root  'pages#home'

  devise_for :users, 
    :path => '', :path_names => {:sign_in    =>  'login', :sign_out   =>  'logout', :sign_up    =>   'signup'}

  get 'users/new'
  get 'users/show'
  get 'help'    =>  'pages#help'
  get 'about'   =>  'pages#about'
  get 'contact' =>  'pages#contact'

  resources :users do
    member do
      get :following, :followers
    end
  end

  get 'following' => 'users#show', as: :following

  resources :microposts,      only: [:create, :destroy]
  resources :relationships,   only: [:create, :destroy]
end
