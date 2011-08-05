class Piece < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_votable
  acts_as_taggable_on :categories
  acts_as_taggable
  has_friendly_id :title, :use_slug => true
  # we needed to create the join table for pieces to instruments for this to work because it's a "has_and_belongs_to_many"
  has_and_belongs_to_many :performances
  has_many  :pictures,    :as    => :imageable
  has_many  :sound_clips, :as => :soundable
  belongs_to  :difficulty
  belongs_to  :user

  # TODO: Add composer to this list
  validates_presence_of :title, :user, :difficulty

  def register_vote
    # TODO: catch vote and adjust difficulty
  end
  
  def get_vote_threshold
    5 # TODO: something arbitrary until we know we're going to use it.
  end
  
end
