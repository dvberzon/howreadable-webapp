module Admin::HomeHelper
  def nav_button_class section
    active = controller_name == section
    "btn #{ active && 'btn-primary'}"
  end
end
