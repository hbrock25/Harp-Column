class Piece < ActiveRecord::Base
  has_many :user_pieces, :dependent => :destroy
end
