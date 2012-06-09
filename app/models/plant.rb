class Plant < ActiveRecord::Base
  belongs_to :plant_type
  belongs_to :user
  attr_accessible :name, :plant_type_id, :user_id
  validates :name, :plant_type_id, :user_id, :presence => true
end
