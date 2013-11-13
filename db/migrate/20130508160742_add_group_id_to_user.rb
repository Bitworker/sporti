class AddGroupIdToUser < ActiveRecord::Migration
  def change
    add_column :users, :group_id, :integer, :after => 'id'
  end
end
