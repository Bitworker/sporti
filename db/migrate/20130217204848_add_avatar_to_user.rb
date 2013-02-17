class AddAvatarToUser < ActiveRecord::Migration
  def change
    add_column :users, :avatar, :string, :after => "last_name"
  end
end
