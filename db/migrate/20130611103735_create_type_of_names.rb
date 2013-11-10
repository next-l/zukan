class CreateTypeOfNames < ActiveRecord::Migration
  def change
    create_table :type_of_names do |t|
      t.string :name
      t.text :display_name
      t.text :note
      t.integer :position

      t.timestamps
    end
  end
end
