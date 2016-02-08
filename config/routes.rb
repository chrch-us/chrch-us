Rails.application.routes.draw do
  scope module: :public do
    # Public resources
    resource :join, only: [:new, :create] do
      post "reset", to: "joins#reset"
    end
    
    resources :new_joins, only: [:create]
    
    # Static pages
    get :about, to: 'pages#about'
    get :learn_more, to: 'pages#learn_more'
    
    # Public root
    root to: 'pages#home'
  end
end
