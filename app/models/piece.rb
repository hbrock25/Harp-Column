class Piece < ActiveRecord::Base
  acts_as_commentable
  rails_admin

  has_and_belongs_to_many   :performances

end
