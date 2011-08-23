# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

Role.create(:name => "owner", :power => '1000')
Role.create(:name => "admin", :power => '0100')
Role.create(:name => "write", :power => '0010')
Role.create(:name => "read",  :power => '0001')
public = Group.create(:name => "public", :is_hidden => true)
approved = Group.create(:name => "approved", :is_hidden => true)


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

Venue.create!([{
  :name => "Safeco Field",
  :address_id => Address.first.id
}])

Venue.all.each do | v |
  v.groups << public
  v.groups << approved
  v.save!
end

p = Performance.create!(
  :date          => DateTime.now,
  :notes         => "Celebrating 200 years of harp magic",
  :venue_id      => Venue.first.id,
  :user_id       => User.last.id
)

p.groups << public

Manufacturer.create :name => "Gibson"

Instrument.create :manufacturer_id => Manufacturer.first.id,
                  :model => "Broken",
                  :user_id => User.last.id


Picture.create :caption => "homer",
               :asset => File.open("public/images/fail_homer.jpg")

SoundClip.create :caption => "Hillsbrook Reels",
                 :asset => File.open("public/assets/hillsbrook_reels.m4a")