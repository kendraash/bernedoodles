Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :dogs do
    resources :litters do
      resources :puppies
    end
  end
  resources :pictures
  resources :users, only: [:index, :show]
  get 'userpage', to: 'users#index', as: 'userpage'

end
