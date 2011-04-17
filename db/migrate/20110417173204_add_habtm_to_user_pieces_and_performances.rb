class AddHabtmToUserPiecesAndPerformances < ActiveRecord::Migration
  def self.up
    create_table :performances_user_pieces, :id => false do |t|
      t.references :user_piece, :null => false
      t.references :performance, :null => false
    end
  end


  def self.down
    drop_table :performances_user_pieces
  end
end
