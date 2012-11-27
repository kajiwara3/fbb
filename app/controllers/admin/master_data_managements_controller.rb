class Admin::MasterDataManagementsController < Admin::Base
  before_filter :authenticate_admin_administrator!
  def show
  end
end
