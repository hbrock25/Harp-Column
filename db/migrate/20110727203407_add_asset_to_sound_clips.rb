class AddAssetToSoundClips < ActiveRecord::Migration
  def self.up
    add_column :sound_clips, :asset_file_name,    :string
    add_column :sound_clips, :asset_content_type, :string
    add_column :sound_clips, :asset_file_size,    :integer
    add_column :sound_clips, :aasset_updated_at,   :datetime
  end

  def self.down
    remove_column :sound_clips, :asset_file_name
    remove_column :sound_clips, :asset_content_type
    remove_column :sound_clips, :asset_file_size
    remove_column :sound_clips, :asset_updated_at
    end
end
