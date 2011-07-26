class AddProfileFieldsToUser < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.string    :name
      t.string    :website
      t.boolean   :private, :default => false
      t.boolean   :admin,   :default => false
    end
  end

  def self.down
    remove_column :users, :name
    remove_column :users, :website
    remove_column :users, :private
    remove_column :users, :admin
  end

end
