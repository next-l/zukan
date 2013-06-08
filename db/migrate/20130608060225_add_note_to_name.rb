class AddNoteToName < ActiveRecord::Migration
  def change
    add_column :names, :note, :text
  end
end
