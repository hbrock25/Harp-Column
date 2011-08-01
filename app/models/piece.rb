class Piece < ActiveRecord::Base
  acts_as_commentable
  acts_as_votable
  rails_admin

<<<<<<< HEAD
  has_and_belongs_to_many   :performances

=======
  # we needed to create the join table for pieces to instruments for this to work because it's a "has_and_belongs_to_many"
  has_and_belongs_to_many :performances
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to :difficulty
  
  
  
  def register_vote
    # TODO: catch vote and adjust difficulty
    # we need a get_vote_threshold method to return the current threshold 
  end
  
  def get_vote_threshold
    5
  end
  
>>>>>>> 03434f3995e8f3d1f3f685ecd2656ed2d019405e
end
