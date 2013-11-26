class AccountSubscriptionPlan < ActiveRecord::Base
  has_many :account_subscriptions

  scope :available, where(:available => true)
end
