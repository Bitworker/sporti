class CreateGroups < ActiveRecord::Migration
  def self.up
    create_table :groups do |t|
      t.string :auth_hash
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :groups
  end
end
