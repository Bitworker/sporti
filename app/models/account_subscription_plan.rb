class AccountSubscriptionPlan < ActiveRecord::Base
  has_many :account_subscriptions
end
