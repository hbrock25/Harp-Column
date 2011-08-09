class Performance < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :musicians, :class_name => "User"
  has_and_belongs_to_many :pieces
  has_and_belongs_to_many :instruments
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to  :user
  belongs_to  :venue
  has_friendly_id :friendly_name, :use_slug => true
  

  validates_presence_of :venue, :user, :date
  accepts_nested_attributes_for :pictures, :sound_clips, :venue

  def friendly_name
    "#{user.name} #{venue.name} #{date.strftime('%m%d%Y')}"
  end

end
