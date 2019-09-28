module ApplicationHelper
  def container_class
    "home" if controller_name == "home"
  end

  def homepage? 
    controller_name == "home" && action_name == "index"
  end
end
