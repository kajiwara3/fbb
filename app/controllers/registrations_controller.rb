class RegistrationsController < Devise::RegistrationsController
  def edit
    render layout: 'application'
  end
end