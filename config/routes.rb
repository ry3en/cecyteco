Rails.application.routes.draw do

  resources :articles;
  resources :posts

  devise_for :users, controllers:
  {omniauth_callbacks: "users/omniauth_callbacks"}

  authenticated :user do
    root 'main#home'
  end
  unauthenticated :user do
    root 'main#unregistered'
  end

end
