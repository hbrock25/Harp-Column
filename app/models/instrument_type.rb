class InstrumentType < ActiveRecord::Base
  rails_admin
  has_many :instruments
end
