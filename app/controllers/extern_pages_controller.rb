class ExternPagesController < ApplicationController
  before_filter :find_account_subscription_plans,  :only => [:pricing]

  def show
  end
  
  def pricing
  end

  protected

  def find_account_subscription_plans
    @plans = AccountSubscriptionPlan.all
  end
end
