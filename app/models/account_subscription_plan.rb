class AccountSubscriptionPlan < ActiveRecord::Base
  has_many :account_subscriptions

  attr_accessible :title, :price, :group_amount, :group_size, :created_at, :updated_at
end
