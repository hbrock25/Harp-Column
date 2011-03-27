class UserPiece < ActiveRecord::Base
  belongs_to :piece
  belongs_to :user
end
