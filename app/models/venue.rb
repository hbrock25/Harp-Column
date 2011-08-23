class Venue < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_taggable_on :format
  acts_as_taggable
  has_friendly_id :name, :use_slug => true

  has_many  :performances
  has_many  :picture_links,   :as => :imageable
  has_one   :official_photo,  :as => :imageable, :class_name => "PictureLink"
  has_many  :sound_clips,     :as => :soundable
  has_many  :groups,          :as => :groupable
  belongs_to  :address

  validates_presence_of :name, :address

  #TODO: this is going to need some optimization
#  def pictures
#    picture_links.all.map{|p| p.picture }
#  end

end
