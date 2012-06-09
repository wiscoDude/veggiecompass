class PlantsController < InheritedResources::Base
  def index
    @plants = current_user.plants
  end

protected
  def begin_of_association_chain
    current_user
  end
end
