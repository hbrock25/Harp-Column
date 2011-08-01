class CreateCompositionDates < ActiveRecord::Migration
  def self.up
    create_table :composition_dates do |t|
      t.date :entry

      t.timestamps
    end
  end

  def self.down
    drop_table :composition_dates
  end
end
