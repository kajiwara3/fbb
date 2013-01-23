require 'spec_helper'

describe Admin::TopController do
  login_admin

  it "hould have a current_administrator" do
    subject.current_admin_administrator.should_not be_nil
  end

  it "should get index" do
    get "index"
    response.should be_success
  end
end
