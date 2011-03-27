class AddPieceIdToUserPiece < ActiveRecord::Migration
  def self.up
    add_column :user_pieces, :piece_id, :integer
  end

  def self.down
    remove_column :user_pieces, :piece_id
  end
end
