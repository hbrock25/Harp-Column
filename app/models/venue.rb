class Venue < ActiveRecord::Base
  # module
  # include Randomizer, etc.
  
  # method area
  rails_admin
  acts_as_commentable
  acts_as_taggable_on :format
  acts_as_taggable
  has_friendly_id :name, :use_slug => true

  has_many  :performances
  has_many  :pictures,        :as => :imageable
  has_one   :official_photo,  :as => :imageable, :class_name => "Picture"
  has_many  :sound_clips,     :as => :soundable
  belongs_to  :address

  validates_presence_of :name, :address
  # class methods

  # instance methods

end
