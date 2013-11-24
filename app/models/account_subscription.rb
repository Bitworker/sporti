class AccountSubscription < ActiveRecord::Base
  belongs_to :user
  belongs_to :account_subscription_plan
end
