class AccountSubscriptionController < ApplicationController
  before_filter :authenticate_user!  
  before_filter :find_account_subscription_plan,    :only => [:new]
  
  def new
  end

  protected

  def find_account_subscription_plan
    if params[:plan]
      @account_subscription_plan = AccountSubscriptionPlan.available.find_by_id(params[:plan])
    else
      @account_subscription_plan = AccountSubscriptionPlan.default
    end
  end
end