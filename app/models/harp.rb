class Harp < ActiveRecord::Base
  belongs_to :hc_user
  has_and_belongs_to_many :performances, :uniq => true

  accepts_nested_attributes_for :performances
end
