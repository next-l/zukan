class CreateAddTypeOfNameIdToNames < ActiveRecord::Migration
  def change
    create_table :add_type_of_name_id_to_names do |t|
      t.integer :type_of_name

      t.timestamps
    end
  end
end
