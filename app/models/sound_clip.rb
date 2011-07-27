class SoundClip < ActiveRecord::Base
  belongs_to :soundable, :polymorphic => true
  has_attached_file :asset,
                    :url => "/assets/:class/:id/:attachment/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"
end
