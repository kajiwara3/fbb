class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.references :gender, null: false
      t.references :age_group, null: false
      t.references :address_group, null: false
      t.datetime :disabled_at
      t.timestamps
    end
  end
end
