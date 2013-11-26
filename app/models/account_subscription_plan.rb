class AccountSubscriptionPlan < ActiveRecord::Base
  has_many :account_subscriptions
  
  scope :available,   where(:available => true)
  scope :unavailable, where(:available => false)
  
  scope :free,      where('month_price = 0')
  scope :not_free,  where('month_price > 0')
  
  def available?
    available == true
  end
  
  def unavailable?
    available == false
  end
  
  def free?
    month_price == 0
  end
  
  def not_free?
    month_price > 0
  end
  
  protected
  
  def self.default
    available.not_free.first
  end
end
