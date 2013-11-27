module ApplicationHelper
  
  def title(page_title)
    content_for(:title) { page_title }
  end
  
  def is_active_link?(controller_name)
    "active" if params[:controller] == controller_name
  end

  def google_font_link_tag(family)
    tag("link", {:rel  => :stylesheet,
                 :type => Mime::CSS,
                 :href => "http://fonts.googleapis.com/css?family=#{family}"}, false, false)
  end
end
