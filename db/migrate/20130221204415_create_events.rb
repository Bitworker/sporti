class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.string   :title,     :null => false
      t.datetime :starts_at, :null => false
      t.datetime :ends_at,   :null => false
      t.boolean  :all_day
      t.text     :description
      
      t.timestamps
    end
  end
  
  def self.down
    drop_table :events
  end
end
