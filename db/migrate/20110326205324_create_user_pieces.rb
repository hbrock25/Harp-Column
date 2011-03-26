class CreateUserPieces < ActiveRecord::Migration
  def self.up
    create_table :user_pieces do |t|
      t.text :notes
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :user_pieces
  end
end
