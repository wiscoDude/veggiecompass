class PlantType < ActiveRecord::Base
  has_many :plants
  attr_accessible :name
  before_destroy :ensure_no_plants
  
protected
  def ensure_no_plants
    self.plants.blank?
  end
end
