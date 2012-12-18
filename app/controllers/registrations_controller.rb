class RegistrationsController < Devise::RegistrationsController
  layout "devise_application"
  def edit
    render layout: 'application'
  end
end