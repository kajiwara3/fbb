Fbb::Application.routes.draw do
  devise_for :users, :controllers => { confirmations: "confirmations",
                                       sessions: "sessions" ,
                                       registrations: "registrations"}
  root :to => 'top#index'
  resource :users
  match '/wellcome' => "users#wellcome"

  namespace :admin do
    devise_for :administrators, :controllers => { sessions: "admin/sessions",
                                                  registrations: "admin/registrations" }
    root to: "top#index"
    resources :administrators
    resources :users do
      collection do
        get 'search'
      end
    end
    resources :address_groups
    resource  :master_data_managements
    resources :age_groups
    resources :wifi_accounts do
      collection do
        post "csv_upload"
      end
    end
  end
end
