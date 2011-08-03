class Address < ActiveRecord::Base
  rails_admin
  has_many :venues

  validates_presence_of :line1, :city, :region, :country_code, :postal_code
end
