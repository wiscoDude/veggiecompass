class TasksController < InheritedResources::Base
  def index
    @tasks = current_user.tasks.order("task_date DESC")
  end

protected
  def begin_of_association_chain
    current_user
  end
end
