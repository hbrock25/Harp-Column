class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses do |t|
      t.string :line1
      t.string :line2
      t.string :city
      t.string :region
      t.string :country_code
      t.string :postal_code

      t.timestamps
    end
  end

  def self.down
    drop_table :addresses
  end
end
