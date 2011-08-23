class CreateRoles < ActiveRecord::Migration
  def self.up
    create_table :roles do |t|
      t.string :name
      t.binary :power, :limit => 1.byte

      t.timestamps
    end
  end

  def self.down
    drop_table :roles
  end
end
