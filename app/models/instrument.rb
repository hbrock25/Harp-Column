class Instrument < ActiveRecord::Base
  rails_admin
  acts_as_taggable
  acts_as_taggable_on :kind
  has_friendly_id :guid, :use_slug => true

  belongs_to :manufacturer
  belongs_to :user

  has_and_belongs_to_many :players, :class_name => "User"
  has_and_belongs_to_many :entries
  has_and_belongs_to_many :performances
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable

  validates_presence_of   :guid
  validates_uniqueness_of :guid
  before_validation :generate_guid

  private

  def generate_guid
    self.guid = UUIDTools::UUID.random_create.to_str
  end

end
