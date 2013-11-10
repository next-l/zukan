class PersonHasName < ActiveRecord::Base
  attr_accessible :name_id, :person_id
  belongs_to :name
  belongs_to :person
end
