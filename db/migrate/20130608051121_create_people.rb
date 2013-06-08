class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :title
      t.datetime :date_of_birth
      t.string :place_of_birth

      t.timestamps
    end
  end
end
