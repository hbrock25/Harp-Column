class Instrument < ActiveRecord::Base
  rails_admin
  acts_as_taggable
  acts_as_taggable_on :kind

  belongs_to :manufacturer

  has_and_belongs_to_many :players, :class_name => "User"
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable

  validates_presence_of  :model, :manufacturer_id, :user_id
end
