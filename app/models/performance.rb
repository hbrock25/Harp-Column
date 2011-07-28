class Performance < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :musicians, :class_name => "User"
  has_and_belongs_to_many :instruments
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to  :venue

end
