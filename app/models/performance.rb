class Performance < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :musicians, :class_name => "User"
  has_and_belongs_to_many :pieces
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to  :user
  belongs_to  :venue
  has_friendly_id :friendly_name

  validates_presence_of :venue, :user, :date

  def friendly_name
    [user.slug.name,venue.slug.name,date("%m%d%Y")].join("-")
  end

end
