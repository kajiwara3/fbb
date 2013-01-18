module ControllerMacros
  def login_admin
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:administrator]
      administrator = FactoryGirl.create(:administrator)
      sign_in administrator # Using factory girl as an example
    end
  end

  def login_user
    before(:each) do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      user = Factory(:user)
      user.confirm! # or set a confirmed_at inside the factory. Only necessary if you are using the confirmable module
      sign_in user
    end
  end
end