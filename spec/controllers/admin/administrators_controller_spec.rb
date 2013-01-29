require 'spec_helper'

describe Admin::AdministratorsController do
  login_admin

  it "should get index" do
    get "index"
    response.should be_success
  end

  it "should render the edit form" do
    get :edit, id: @administrator.id
    response.should render_template 'edit'
  end
end
