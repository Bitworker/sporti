class ApplicationController < ActionController::Base

  def forem_user
    current_user
  end
  helper_method :forem_user

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
end
