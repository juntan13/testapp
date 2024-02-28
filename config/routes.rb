Rails.application.routes.draw do
 
  devise_for :users
  scope '/admin' do
    resources :users
  end

  
  resources :articles
  resources :roles
 
  authenticated :user do
    root to: 'articles#index', as: :authenticated_root
  end
  root to: 'welcome#index'

end
