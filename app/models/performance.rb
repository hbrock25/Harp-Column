class Performance < ActiveRecord::Base
  belongs_to :venue
  belongs_to :hc_user
  has_and_belongs_to_many :user_pieces, :uniq => true
  has_and_belongs_to_many :harps, :uniq => true

  accepts_nested_attributes_for :user_pieces, :reject_if => :all_blank
  accepts_nested_attributes_for :harps, :reject_if => :all_blank
end
