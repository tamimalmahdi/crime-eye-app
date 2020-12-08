module ApplicationHelper
  # active class used to highlight nav bar
  def is_active?(link_path)
    if current_page?(link_path)
      'active'
    else
      ''
    end
  end
end
