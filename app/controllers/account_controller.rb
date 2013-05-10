class AccountController < ApplicationController
  before_filter :authenticate_user!  
  before_filter :find_user,  :only => [:show, :edit, :update]
  
  def show
  end
  
  def edit
  end
  
  # PUT /pages/1
  # PUT /pages/1.json
  def update
    @user = User.find(params[:id])
    
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to account_path(@user), notice: t('account.information.saved') }
        format.json { head :ok }
      else
        format.html { render action: "edit" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  
  protected
  
  def find_user
    @user = User.find(params[:id])
  end
end
