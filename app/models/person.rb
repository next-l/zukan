class Person < ActiveRecord::Base
  attr_accessible :date_of_birth, :place_of_birth, :title, :name_id
  has_many :names
  attr_accessor :name_id
end
