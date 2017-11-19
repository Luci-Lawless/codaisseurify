Rails.application.routes.draw do
  get 'pages/home'
  root to: 'artists#index'

  resources :artists

  resources :artists do
    resources :songs, only: [:new, :create, :destroy]
  end

  namespace :api do
    resources :artists do
      resources :songs, only: [:index, :create, :destroy, :show] do
        collection do
          delete "destroy_all"
        end
      end
    end
  end

end
