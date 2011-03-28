class AddUserIdToHarp < ActiveRecord::Migration
  def self.up
    add_column :harps, :user_id, :integer
  end

  def self.down
    remove_column :harps, :user_id
  end
end
