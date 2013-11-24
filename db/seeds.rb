# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


AccountSubscriptionPlan.create(title: 'Kostenlos',      price: 0,    :group_amount => 1, :group_size => 5,  :created_at => Time.current, :updated_at => Time.current)
AccountSubscriptionPlan.create(title: 'Starter Paket',  price: 690,  :group_amount => 1, :group_size => 15, :created_at => Time.current, :updated_at => Time.current)
AccountSubscriptionPlan.create(title: 'Standard Paket', price: 1390, :group_amount => 2, :group_size => 30, :created_at => Time.current, :updated_at => Time.current)
AccountSubscriptionPlan.create(title: 'Business Paket', price: 1990, :group_amount => 3, :group_size => 45, :created_at => Time.current, :updated_at => Time.current)
