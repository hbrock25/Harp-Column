class HcUser < User
  has_many :user_pieces, :dependent => :destroy
  has_many :performances, :dependent => :destroy
  has_many :harps
end
