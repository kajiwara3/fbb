# coding: utf-8
class Admin::WifiAccountsController < Admin::Base
  def index
    @wifi_accounts = WifiAccount.order(:id).page(params[:page]).per(10)
  end

  def csv_upload
    @wifi_accounts = WifiAccount.order(:id).page(params[:page]).per(10)
    if params[:wifi_accounts].blank?
      flash[:error] = "ファイルを選択してください"
      return render "index"
    end

    require 'csv'
    begin
      reader = params[:wifi_accounts].read
      WifiAccount.transaction do
        CSV.parse(reader) do |row|
          @wifi_account = WifiAccount.new({
            sign_in_code: row[0],
            sign_in_pass: row[1]
          })
          @wifi_account.save!
        end
      end
    rescue => e
      flash[:error] = "error![#{e.message}]"
      return render "index"
    else
      return redirect_to :admin_wifi_accounts, notice: "アカウントの登録が完了しました"
    end
  end
end
