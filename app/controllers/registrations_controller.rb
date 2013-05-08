class RegistrationsController < Devise::RegistrationsController
  before_filter :set_view_path
  
  # GET /resource/sign_up
  def new
    super
  end
  
  # POST /resource
  def create
    build_resource
    @group = Group.where(:auth_hash => params[:auth_hash])
    resource.group_id = @group_id if @group.present?
    
    if @group.present? && resource.save
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_navigational_format?
        sign_in(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      resource.errors.add(:base, "Falsche Gruppen ID") if @group.blank?
      clean_up_passwords resource
      respond_with resource
    end
  end
  
   # GET /resource/edit
  def edit
    super
  end
  
  # PUT /resource
  # We need to use a copy of the resource because we don't want to change
  # the current user in place.
  def update
    super
  end
  
  # DELETE /resource
  def destroy
    super
  end
  
  # GET /resource/cancel
  # Forces the session data which is usually expired after sign
  # in to be expired now. This is useful if the user wants to
  # cancel oauth signing in/up in the middle of the process,
  # removing all OAuth session data.
  def cancel
    super
  end
  
  protected
  
  def set_view_path
    prepend_view_path "#{Rails.root}/app/views/devise/registrations"
  end
end
