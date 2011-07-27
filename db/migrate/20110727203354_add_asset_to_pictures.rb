class AddAssetToPictures < ActiveRecord::Migration
  def self.up
    add_column :pictures, :asset_file_name,    :string
    add_column :pictures, :asset_content_type, :string
    add_column :pictures, :asset_file_size,    :integer
    add_column :pictures, :aasset_updated_at,   :datetime
  end

  def self.down
    remove_column :pictures, :asset_file_name
    remove_column :pictures, :asset_content_type
    remove_column :pictures, :asset_file_size
    remove_column :pictures, :asset_updated_at
    end
end
