Fbb::Application.routes.draw do
  devise_for :users

  root :to => 'top#index'
  resource :users
end
