require 'spec_helper'

describe Admin::UsersController do
  login_admin

  it "should have a current_user" do
    subject.current_user.should_not_be_nil
  end

  it "should get index" do
    get 'index'
    response.should be_success
  end
end
