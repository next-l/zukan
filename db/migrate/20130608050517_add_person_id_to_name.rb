class AddPersonIdToName < ActiveRecord::Migration
  def change
    add_column :names, :person_id, :integer
  end
end
