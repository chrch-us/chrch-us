Rails.application.routes.draw do
  scope module: :public do
    # Public resources
    resources :joins, only: [:new]
    resources :new_joins, only: [:create]
    
    # Static pages
    get :about, to: 'pages#about'
    
    # Public root
    root to: 'pages#home'
  end
end
