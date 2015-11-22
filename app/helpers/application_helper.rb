module ApplicationHelper

  def bootstrap_class_for(flash_type)
    case flash_type
      when "success"
        "alert-success"   # Green
      when "error"
        "alert-danger"    # Red
      when "alert"
        "alert-warning"   # Yellow
      when "info"
        "alert-warning"   # Yellow
      when "notice"
        # "alert-info"      # Blue
        "alert-success"
      else
        flash_type.to_s
    end
  end
end
