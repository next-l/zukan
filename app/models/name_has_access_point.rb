class NameHasAccessPoint < ActiveRecord::Base
  attr_accessible :controlled_access_point_id, :name_id
  belongs_to :name
  belongs_to :controlled_access_point
end
