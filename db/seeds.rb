# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

User.create!([{
    :name => "John Metta",
    :email => "mail@johnmetta.com",
    :password => "yadayada",
    :password_confirmation => "yadayada",
    :admin => true
  },{
    :name => "Seth MacPherson",
    :email => "seth.macpherson@gmail.com",
    :password => "change$me",
    :password_confirmation => "change$me",
    :admin => true
  }
}])
User.all.each do | u |
  u.confirm!
end


Address.create!([{
  :line1         => "1906 Kauffman Ave"
  :line2         => ""
  :city          => "Seattle"
  :region        => "WA"
  :country_code  => "US"
  :postal_code   => "98201"
}])
# 
# Venue.create!([{
#   
# }])
# 
# 
# 
# Performance.create!([{
#   :date          => DateTime.now
#   :notes         => "Celebrating 200 years of harp magic"
#   :venue_id      => Venue.first
# }])
# 
# Performance.all.each do | p |
#   p.save!
# end


InstrumentType.create([{ :name => 'Harp'}, { :name => 'Guitar'}, { :name => "Flute"}])
Manufacturer.create :name => "Gibson"

Instrument.create :manufacturer_id => Manufacturer.first.id,
                  :instrument_type_id => InstrumentType.first.id,
                  :model => "Broken"

User.first.instruments << Instrument.first