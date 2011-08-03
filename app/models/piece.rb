class Piece < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_votable
  acts_as_taggable_on :categories
  acts_as_taggable
  has_friendly_id :title, :use_slug => true
  # we needed to create the join table for pieces to instruments for this to work because it's a "has_and_belongs_to_many"
  has_and_belongs_to_many :performances
  has_many  :pictures, :as    => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to :difficulty

  validates_presence_of :title, :composer, :user, :difficulty

  def register_vote
    # TODO: catch vote and adjust difficulty
    # we need a get_vote_threshold method to return the current threshold 
  end
  
  def get_vote_threshold
    5
  end
  
end
