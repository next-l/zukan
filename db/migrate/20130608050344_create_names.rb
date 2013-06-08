class CreateNames < ActiveRecord::Migration
  def change
    create_table :names do |t|
      t.text :type_of_name
      t.text :name_string
      t.text :scope_of_usage
      t.datetime :dates_of_usage
      t.string :language_of_name
      t.text :script_of_name
      t.string :transliteration_scheme_of_name

      t.timestamps
    end
  end
end
