Rails.application.routes.draw do
  devise_for :users,
  controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  root to: 'pages#home'
  resources :bars do
    resources :tournaments, only: [:new, :create]
  end
  resources :tournaments, except: [:new, :create] do
    resources :players
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

