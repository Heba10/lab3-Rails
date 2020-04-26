Rails.application.routes.draw do
  root to: 'pages#home'
  devise_for :users
  get 'welcome/index'
  
  resources :articles do
    resources :comments
  end

  
end