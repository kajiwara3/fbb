Fbb::Application.routes.draw do
  devise_for :users, :controllers => { confirmations: "confirmations",
                                       sessions: "sessions" ,
                                       registrations: "registrations"}
  root :to => 'top#index'
  resource :users
  match '/wellcome' => "users#wellcome"

  namespace :admin do
    devise_for :administrators, :controllers => { :sessions => "admin/sessions" }
    root to: "top#index"
    resources :administrators
  end
end
