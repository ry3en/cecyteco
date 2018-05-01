Rails.application.routes.draw do

  devise_for :users

resources :articles;

  authenticated :user do
    root 'main#home'
  end

  unauthenticated :user do
    root 'main#unregistered'
  end
end
