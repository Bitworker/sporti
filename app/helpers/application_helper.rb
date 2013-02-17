module ApplicationHelper

  def title(page_title)
    content_for(:title) { page_title }
  end

  def is_active_link?(controller_name)
    "active" if params[:controller] == controller_name
  end
end
