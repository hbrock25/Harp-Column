class AddUserIdToUserPiece < ActiveRecord::Migration
  def self.up
    add_column :user_pieces, :user_id, :integer
  end

  def self.down
    remove_column :user_pieces, :user_id
  end
end
