class Entry < ActiveRecord::Base
  rails_admin
  acts_as_commentable

  has_and_belongs_to_many :instruments
  has_and_belongs_to_many :pieces
  belongs_to  :notebook

  validates_presence_of :notebook, :body


end
