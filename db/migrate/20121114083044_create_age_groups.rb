class CreateAgeGroups < ActiveRecord::Migration
  def change
    create_table :age_groups do |t|
      t.integer :age_group_code
      t.string :description
      t.timestamps
    end
  end
end
