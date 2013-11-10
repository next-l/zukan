class CreatePersonHasNames < ActiveRecord::Migration
  def change
    create_table :person_has_names do |t|
      t.integer :person_id
      t.integer :name_id

      t.timestamps
    end
    add_index :person_has_names, :person_id
    add_index :person_has_names, :name_id
  end
end
