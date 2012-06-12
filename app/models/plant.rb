class Plant < ActiveRecord::Base
  belongs_to :plant_type
  belongs_to :user
  has_many :tasks
  attr_accessible :name, :plant_type_id, :user_id
  validates :name, :plant_type_id, :user_id, :presence => true
  
  before_destroy :ensure_no_tasks
  

protected
  def ensure_no_tasks
    self.tasks.blank?
  end
end
