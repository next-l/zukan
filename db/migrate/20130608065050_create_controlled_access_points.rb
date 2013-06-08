class CreateControlledAccessPoints < ActiveRecord::Migration
  def change
    create_table :controlled_access_points do |t|
      t.text :base_access_point
      t.string :type_of_controlled_access_point
      t.string :language_of_base_access_point
      t.text :source_of_controlled_access_point

      t.timestamps
    end
  end
end
