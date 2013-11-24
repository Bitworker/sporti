class CreateAccountSubscriptionPlans < ActiveRecord::Migration
  def change
    create_table :account_subscription_plans do |t|
      t.string  :title,                         :null => false
      t.integer :price,                         :null => false
      t.integer :group_amount,                  :null => false
      t.integer :group_size,                    :null => false
      t.boolean :available,   :default => true, :null => false
      
      t.timestamps
    end
  end
end
