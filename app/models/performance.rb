class Performance < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :musicians, :class_name => "User"
  has_and_belongs_to_many :pieces
  has_many  :picture_links,   :as => :imageable
  has_many  :sound_clips,     :as => :soundable
  has_many  :groups,          :as => :groupable
  has_and_belongs_to_many :instruments
  belongs_to  :user
  belongs_to  :venue
  has_friendly_id :friendly_name, :use_slug => true
  

  before_save :add_to_user_group

  validates_presence_of :venue, :user, :date
  accepts_nested_attributes_for :venue

  def friendly_name
    "#{user.name} #{venue.name} #{date.strftime('%m%d%Y')}"
  end

  private

  def add_to_user_group
    groups << user.default_group
  end

end
