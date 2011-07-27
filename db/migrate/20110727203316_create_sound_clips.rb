class CreateSoundClips < ActiveRecord::Migration
  def self.up
    create_table :sound_clips do |t|
      t.string      :caption
      t.references  :imageable, :polymorphic => true

      t.timestamps
    end
  end

  def self.down
    drop_table :sound_clips
  end
end
