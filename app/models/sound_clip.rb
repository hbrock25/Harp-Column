class SoundClip < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_taggable
  acts_as_taggable_on :venue, :user, :performances

  belongs_to :soundable, :polymorphic => true
  has_attached_file :asset,
                    :url => "/assets/:class/:id/:attachment/:style.:extension",
                    :path => ":rails_root/public/assets/:class/:id/:attachment/:style.:extension"
end
