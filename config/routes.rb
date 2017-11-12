Rails.application.routes.draw do
  get 'pages/home'
  root to: 'pages#home'

  resources :artists

  resources :artists do
    resources :songs, only: [:new, :create, :destroy]
  end

end
