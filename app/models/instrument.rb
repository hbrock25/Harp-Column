class Instrument < ActiveRecord::Base
  rails_admin
  belongs_to :manufacturer
  belongs_to :instrument_type

  has_and_belongs_to_many :users

end
