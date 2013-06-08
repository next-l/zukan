class Person < ActiveRecord::Base
  attr_accessible :date_of_birth, :place_of_birth, :title, :name_id
  #has_many :person_has_names, :dependent => :destroy
  has_many :names #, :through => :person_has_names
  attr_accessor :name_id
end
