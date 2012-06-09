class Task < ActiveRecord::Base
  belongs_to :plant
  belongs_to :user
  attr_accessible :minutes, :notes, :plant_id, :task_date, :user_id, :category
  validates :minutes, :user_id, :category, :presence => true
  validates :plant_id, :presence => { :if => :plant_type_needed }
  
  CATEGORIES = ["Greenhouse", "Field Growing", "Harvest & Packing", "Not Crop Specific - Field Growing", "Not Crop Specific - Harvest & Packing"]

protected
  def plant_type_needed
    ["Field Growing", "Harvest & Packing"].include?(self.category)
  end

end
