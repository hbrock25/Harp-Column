class Address < ActiveRecord::Base
  has_many :venues

  validates_presence_of :line1, :city, :region, :country_code, :postal_code
end
