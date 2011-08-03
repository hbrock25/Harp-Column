class Venue < ActiveRecord::Base
  # module
  # include Randomizer, etc.
  
  # method area
  rails_admin
  acts_as_commentable
  acts_as_taggable_on :stage
  acts_as_taggable

  # has_and_belongs_to_many :instruments
  # has_and_belongs_to_many :musicians, :class_name => "User"
  has_many  :performances
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable

  validates_presence_of :name, :address_id
  # class methods

  # instance methods

end
