class MembersController < ApplicationController
  before_filter :find_users,  :only => [:index]
  
  def index
  end

  protected
  
  def find_users
    @users = User.find(:all)
  end
end
