class CreateWifiAccounts < ActiveRecord::Migration
  def change
    create_table :wifi_accounts do |t|
      t.text :sign_in_code
      t.text :sign_in_pass
      t.references :user, null: true
      t.timestamps
    end
    add_index :wifi_accounts, :sign_in_code, unique: true, length: 200
  end
end
