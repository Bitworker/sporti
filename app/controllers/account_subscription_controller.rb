class AccountSubscriptionController < ApplicationController
  before_filter :authenticate_user!  
  before_filter :find_account_subscription_plan,        :only => [:new]
  before_filter :find_other_account_subscription_plans, :only => [:new]
  before_filter :build_account_subscription,            :only => [:new, :create]

  def new
  end

  def create
    if current_user && params[:plan]
      @plan = AccountSubscriptionPlan.available.not_free.find_by_id(params[:plan])

      @account_subscription.user_id                      = current_user.id
      @account_subscription.account_subscription_plan_id = @plan.id
      @account_subscription.start_date                   = Time.current.to_date
      @account_subscription.end_date                     = Time.current.to_date.months_since(@plan.month_amount)
      
      if @account_subscription.save
        flash[:notice] = t('account_subscription.created', :plan_title => @plan.title) 
        redirect_to dashboard_path
      else
        raise "AccountSubscription could not be saved: #{account_subscription}"
      end
    else
      redirect_to new_account_subscription_path
    end
  end

  protected

  def find_account_subscription_plan
    if params[:plan]
      @account_subscription_plan = AccountSubscriptionPlan.available.not_free.find_by_id(params[:plan])
    else
      @account_subscription_plan = AccountSubscriptionPlan.default
    end
  end

  def find_other_account_subscription_plans
    @other_account_subscription_plans = AccountSubscriptionPlan.available.not_free.where('ID != ?', @account_subscription_plan)
  end

  def build_account_subscription
    @account_subscription = AccountSubscription.new
  end
end