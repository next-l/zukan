class Name < ActiveRecord::Base
  attr_accessible :dates_of_usage, :language_of_name, :name_string, :scope_of_usage, :script_of_name, :transliteration_scheme_of_name, :type_of_name, :note
  attr_accessible :person_id
  belongs_to :person
  has_many :name_has_access_points, :dependent => :destroy
  has_many :controlled_access_points, :through => :name_has_access_points
end
