class Performance < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :musicians, :class_name => "User"
  has_and_belongs_to_many :pieces
  has_many  :picture_links,   :as => :imageable
  has_many  :sound_clips,     :as => :soundable
  has_many  :groups,          :as => :groupable
  belongs_to  :user
  belongs_to  :venue
  has_friendly_id :friendly_name

  before_save :add_to_user_group

  validates_presence_of :venue, :user, :date
  accepts_nested_attributes_for :venue

  def friendly_name
    [self.user.slug.name,self.venue.slug.name,self.date("%m%d%Y")].join("-")
  end

  private

  def add_to_user_group
    groups << user.default_group
  end

end
