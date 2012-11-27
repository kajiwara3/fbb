class CreateAddressGroups < ActiveRecord::Migration
  def change
    create_table :address_groups do |t|
      t.integer :address_group_code
      t.string :caption
      t.timestamps
    end
  end
end
