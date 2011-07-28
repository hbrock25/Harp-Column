class Instrument < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  belongs_to :manufacturer
  belongs_to :instrument_type

  has_and_belongs_to_many :players, :class_name => "User"
  has_and_belongs_to_many :performances
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable
  has_many  :performances

end
