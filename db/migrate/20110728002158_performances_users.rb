class PerformancesUsers < ActiveRecord::Migration
  def self.up
    create_table :performances_users, :id => false do |t|
      t.integer :performance_id
      t.integer :user_id
    end

    add_index :performances_users, [:performance_id, :user_id], :unique => true
  end

  def self.down
    drop_table :performances_users
    end
end
