class ApplicationController < ActionController::Base
  protect_from_forgery
  
  # Devise Login Logout Paths
  def after_sign_up_path_for(resource)
    dashboard_path(resource)
  end 
  
  def after_sign_in_path_for(resource)
    dashboard_path(resource)
  end
  
  def after_sign_out_path_for(resource_or_scope) 
    root_path
  end
  
  # Cleanup possible?
  
  # got these tips from
  # http://lyconic.com/blog/2010/08/03/dry-up-your-ajax-code-with-the-jquery-rest-plugin
  before_filter :correct_safari_and_ie_accept_headers
  after_filter :set_xhr_flash
  
  def set_xhr_flash
    flash.discard if request.xhr?
  end
  
  def correct_safari_and_ie_accept_headers
    ajax_request_types = ['text/javascript', 'application/json', 'text/xml']
    request.accepts.sort! { |x, y| ajax_request_types.include?(y.to_s) ? 1 : -1 } if request.xhr?
  end
end
