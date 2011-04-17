class Performance < ActiveRecord::Base
  belongs_to :venue
  belongs_to :hc_user
  has_and_belongs_to_many :user_pieces

  accepts_nested_attributes_for :user_pieces
end
