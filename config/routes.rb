Fbb::Application.routes.draw do
  devise_for :users

  root :to => 'top#index'
  resource :users

  namespace :admin do
    root to: "top#index"
    resources :administrators
  end
end
