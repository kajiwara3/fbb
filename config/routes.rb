Fbb::Application.routes.draw do
  devise_for :users

  root :to => 'top#index'
  resource :users

  namespace :admin do
    devise_for :administrators, :controllers => { :sessions => "admin/sessions" }
    root to: "top#index"
    resources :administrators
  end
end
