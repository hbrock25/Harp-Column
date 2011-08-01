class Instrument < ActiveRecord::Base
  rails_admin
  belongs_to :manufacturer
  belongs_to :instrument_type

  has_and_belongs_to_many :players, :class_name => "User"
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable

end
