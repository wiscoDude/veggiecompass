class User < ActiveRecord::Base
  has_many :plants
  has_many :tasks
  after_create :create_base_plant_list
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :token_authenticatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
  
protected
  def create_base_plant_list
    PlantType.all.each do |plant_type|
      plant = Plant.new(:user_id => self.id)
      plant.plant_type_id = plant_type.id
      plant.name = plant_type.name
      plant.save
    end
  end
end
