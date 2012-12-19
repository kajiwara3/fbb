class Admin::WifiAccountsController < Admin::Base
  def index
    @wifi_accounts = WifiAccount.order(:id).page(params[:page]).per(10)
  end
end
