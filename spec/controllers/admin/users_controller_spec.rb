#require 'spec_helper'

describe Admin::UsersController do
  login_admin
  subject {response}

  it "should get index" do
    get "index"
    should be_success
  end

  it "should get new" do
    get "new"
    should be_success
  end

  it "should get edit form" do
    user = FactoryGirl.create :user
    get :edit, id: user.id
    should be_success
  end
end
