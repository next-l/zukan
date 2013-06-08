class ControlledAccessPoint < ActiveRecord::Base
  attr_accessible :base_access_point, :language_of_base_access_point, :source_of_controlled_access_point, :type_of_controlled_access_point, :name_id
  has_many :name_has_access_points, :dependent => :destroy
  has_many :names, :through => :name_has_access_points
  attr_accessor :name_id
end
