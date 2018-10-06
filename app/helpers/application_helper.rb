module ApplicationHelper
  def container_class
    "home" if controller_name == "home"
  end
end
