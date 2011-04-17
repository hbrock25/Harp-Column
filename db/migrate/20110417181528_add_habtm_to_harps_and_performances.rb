class AddHabtmToHarpsAndPerformances < ActiveRecord::Migration
  def self.up
    create_table :harps_performances, :id => false do |t|
      t.references :harp, :null => false
      t.references :performance, :null => false
    end
    add_index(:harps_performances, [:harp_id, :performance_id], 
              :unique => true, :name => 'harps_performances_idx')

  end

  def self.down
    drop_table :harps_performances
  end
end
