# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)

u = User.create! :name => "Harp Admin",
                :email => "harp@johnmetta.com",
                :password => "yadayada",
                :password_confirmation => "yadayada",
                :admin => true

u.confirm!

InstrumentType.create([{ :name => 'Harp'}, { :name => 'Guitar'}, { :name => "Flute"}])
Manufacturer.create :name => "Gibson"

Instrument.create :manufacturer_id => Manufacturer.first.id,
                  :instrument_type_id => InstrumentType.first.id,
                  :model => "Broken"

User.first.instruments << Instrument.first