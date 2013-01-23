require 'spec_helper'

describe UsersController do
  login_user

  it "should have a current_user" do
    subject.current_user.should_not be_nil
  end

  it "should get show" do
    get 'show'
    response.should be_success
  end
end
