Rails.application.routes.draw do
  get :about, to: 'public/pages#about'
  root to: 'public/pages#home'
end
