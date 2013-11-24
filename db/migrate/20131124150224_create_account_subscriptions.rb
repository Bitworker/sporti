class CreateAccountSubscriptions < ActiveRecord::Migration
  def change
    create_table :account_subscriptions do |t|
      t.belongs_to :user,                      :null => false
      t.belongs_to :account_subscription_plan, :null => false
      
      t.date       :start_date,                :null => false
      t.date       :end_date,                  :null => false
      
      t.timestamps
    end
  end
end
