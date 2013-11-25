# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

plan_1 = AccountSubscriptionPlan.new
plan_1.title        = 'Kostenlos'
plan_1.group_amount = 1
plan_1.group_size   = 5
plan_1.month_amount = 1
plan_1.month_price  = 0
plan_1.available    = true
plan_1.created_at   = Time.current
plan_1.updated_at   = Time.current
plan_1.save

plan_2 = AccountSubscriptionPlan.new
plan_2.title        = 'Starter Paket'
plan_2.group_amount = 1
plan_2.group_size   = 15
plan_2.month_amount = 3
plan_2.month_price  = 690
plan_2.available    = true
plan_2.created_at   = Time.current
plan_2.updated_at   = Time.current
plan_2.save

plan_3 = AccountSubscriptionPlan.new
plan_3.title        = 'Standard Paket'
plan_3.group_amount = 2
plan_3.group_size   = 30
plan_3.month_amount = 3
plan_3.month_price  = 1390
plan_3.available    = true
plan_3.created_at   = Time.current
plan_3.updated_at   = Time.current
plan_3.save

plan_4 = AccountSubscriptionPlan.new
plan_4.title        = 'Business Paket'
plan_4.group_amount = 3
plan_4.group_size   = 45
plan_4.month_amount = 3
plan_4.month_price  = 1990
plan_4.available    = true
plan_4.created_at   = Time.current
plan_4.updated_at   = Time.current
plan_4.save

user_1 = User.new
user_1.email      = 'free@test.com'
user_1.first_name = 'Max'
user_1.last_name  = 'Free'
user_1.owner      = true
user_1.password   = 'testtest'
user_1.created_at = Time.current
user_1.updated_at = Time.current
user_1.save

user_2 = User.new
user_2.email      = 'plan1@test.com'
user_2.first_name = 'Peter'
user_2.last_name  = 'Plan1'
user_2.owner      = true
user_2.password   = 'testtest'
user_2.created_at = Time.current
user_2.updated_at = Time.current
user_2.save

user_3 = User.new
user_3.email      = 'plan2@test.com'
user_3.first_name = 'Paul'
user_3.last_name  = 'Plan2'
user_3.owner      = true
user_3.password   = 'testtest'
user_3.created_at = Time.current
user_3.updated_at = Time.current
user_3.save

user_4 = User.new
user_4.email      = 'plan3@test.com'
user_4.first_name = 'Pascal'
user_4.last_name  = 'Plan3'
user_4.owner      = true
user_4.password   = 'testtest'
user_4.created_at = Time.current
user_4.updated_at = Time.current
user_4.save

subscription_1 = AccountSubscription.new
subscription_1.user_id                      = user_1.id
subscription_1.account_subscription_plan_id = plan_1.id
subscription_1.start_date                   = Time.current.to_date
subscription_1.end_date                     = Time.current.to_date.months_since(plan_1.month_amount)
subscription_1.created_at                   = Time.current
subscription_1.updated_at                   = Time.current
subscription_1.save

subscription_2 = AccountSubscription.new
subscription_2.user_id                      = user_2.id
subscription_2.account_subscription_plan_id = plan_2.id
subscription_2.start_date                   = Time.current.to_date
subscription_2.end_date                     = Time.current.to_date.months_since(plan_2.month_amount)
subscription_2.created_at                   = Time.current
subscription_2.updated_at                   = Time.current
subscription_2.save

subscription_3 = AccountSubscription.new
subscription_3.user_id                      = user_3.id
subscription_3.account_subscription_plan_id = plan_3.id
subscription_3.start_date                   = Time.current.to_date
subscription_3.end_date                     = Time.current.to_date.months_since(plan_3.month_amount)
subscription_3.created_at                   = Time.current
subscription_3.updated_at                   = Time.current
subscription_3.save

subscription_4 = AccountSubscription.new
subscription_4.user_id                      = user_4.id
subscription_4.account_subscription_plan_id = plan_4.id
subscription_4.start_date                   = Time.current.to_date
subscription_4.end_date                     = Time.current.to_date.months_since(plan_4.month_amount)
subscription_4.created_at                   = Time.current
subscription_4.updated_at                   = Time.current
subscription_4.save
