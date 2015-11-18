Rails.application.routes.draw do
  devise_for :users
  root to: "home#index"

  resources :dogs do
    resources :litters, only: [:new, :create]
  end
  resources :litters, :except => [:new, :create] do
    resources :puppies
  end

  resources :pictures
  resources :users, only: [:index, :show]

  resources :registrations, only: [:create]

  get 'userpage', to: 'users#index', as: 'userpage'

  get 'info', to: 'info#index', as: 'info'
  get 'contract', to: 'contract#index', as: 'contract'


  post "/registrations/:id" => "registrations#show"
  post "/hook" => "regstrations#hook"
end
