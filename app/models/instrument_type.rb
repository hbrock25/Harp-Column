class InstrumentType < ActiveRecord::Base
  rails_admin
  has_many :instruments
  validates_presence_of   :name
end
