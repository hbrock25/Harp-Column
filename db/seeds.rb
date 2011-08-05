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
  },{
    :name => "Joe Schmoe",
    :email => "joe@live.com",
    :password => "joesucks",
    :password_confirmation => "joesucks"
}])
User.all.each do | u |
  u.confirm!
end


Address.create!([{
  :line1         =>  "1000 Mariner Way",
  :line2         =>  "",
  :city          =>  "Seattle",
  :region        =>  "WA",
  :country_code  =>  "US",
  :postal_code   =>  "98201"
},{
  :line1         => "822 June ST",
  :line2         => "",
  :city          => "Hood River",
  :region        => "OR",
  :country_code  => "US",
  :postal_code   => "97031"
}])

Address.all.each do | a |
  a.save!
end

Venue.create!([{
  :name => "Safeco Field",
  :address_id => Address.first.id
}])

Venue.all.each do | v |
  v.save!
end

Performance.create!([{
  :date          => DateTime.now,
  :notes         => "Celebrating 200 years of harp magic",
  :venue_id      => Venue.first.id,
  :user_id       => User.last.id
}])

Performance.all.each do | p |
  p.save!
end

Manufacturer.create :name => "Gibson"

Instrument.create :manufacturer_id => Manufacturer.first.id,
                  :model => "Broken",
                  :user_id => User.last.id
