require 'spec_helper'

describe Admin::AddressGroupsController do
  login_admin

  it "should get index" do
    get "index"
    response.should be_success
  end

  it "should get new" do
    get "new"
    response.should be_success
  end

  it "should render the edit form" do
    address_group = FactoryGirl.create :address_group
    get :edit, id: address_group.id
    response.should render_template 'edit'
  end
end
