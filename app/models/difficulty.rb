class Difficulty < ActiveRecord::Base
  rails_admin
  has_many :pieces
  validates_presence_of :name
end
