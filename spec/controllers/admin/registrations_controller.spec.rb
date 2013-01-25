require 'spec_helper'

describe RegistrationsController do
  login_user

  it "should get edit" do
    get 'edit'
    response.should be_success
  end
end
