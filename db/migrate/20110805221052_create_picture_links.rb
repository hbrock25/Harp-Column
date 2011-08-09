class CreatePictureLinks < ActiveRecord::Migration
  def self.up
    create_table :picture_links do |t|
      t.integer :picture_id
      t.references  :imageable, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :picture_links
  end
end
