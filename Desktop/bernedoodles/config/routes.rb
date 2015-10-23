Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"
  
  resources :dogs do
    resources :litters
  end

  resources :users, only: [:index, :show]
  get 'userpage', to: 'users#index', as: 'userpage'

end
