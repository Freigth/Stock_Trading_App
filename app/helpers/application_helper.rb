module ApplicationHelper
  def flash_class(level)
    case level
    when 'notice' then 'alert alert-info m-0'
    when 'success' then 'alert alert-success m-0'
    when 'error' then 'alert alert-danger m-0'
    when 'alert' then 'alert alert-warning m-0'
    end
  end
end
