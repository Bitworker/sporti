module ApplicationHelper
  
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def is_active_link?(controller_name)
    # [0..4] Because of Forem subcontrollers
    "active" if params[:controller][0..4] == controller_name[0..4]
  endss
end
