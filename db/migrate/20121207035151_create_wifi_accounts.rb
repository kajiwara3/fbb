class CreateWifiAccounts < ActiveRecord::Migration
  def change
    create_table :wifi_accounts do |t|
      t.text :sign_in_code
      t.text :sign_in_pass
      t.references :user, null: true
      t.timestamps
    end
  end
end
