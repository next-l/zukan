class CreateNameHasAccessPoints < ActiveRecord::Migration
  def change
    create_table :name_has_access_points do |t|
      t.integer :name_id
      t.integer :controlled_access_point_id

      t.timestamps
    end
    add_index :name_has_access_points, :name_id
    add_index :name_has_access_points, :controlled_access_point_id
  end
end
