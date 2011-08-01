class Difficulty < ActiveRecord::Base
  rails_admin
  
  has_many :pieces
end
