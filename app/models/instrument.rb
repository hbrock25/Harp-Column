class Instrument < ActiveRecord::Base
  rails_admin
  acts_as_taggable
  acts_as_taggable_on :kind

  belongs_to :manufacturer
  belongs_to :user

  has_and_belongs_to_many :players, :class_name => "User"
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable

end
