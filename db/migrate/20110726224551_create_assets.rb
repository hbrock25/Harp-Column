class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.string :name
      t.string :asset_type
      t.string :asset_path

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
