class UserPiece < ActiveRecord::Base
  belongs_to :piece
  belongs_to :hc_user
  has_and_belongs_to_many :performances, :uniq => true

  accepts_nested_attributes_for :performances, :reject_if => :all_blank
  
  def title
    self.piece.title
  end

end
