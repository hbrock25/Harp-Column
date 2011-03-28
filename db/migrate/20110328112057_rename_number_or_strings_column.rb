class RenameNumberOrStringsColumn < ActiveRecord::Migration
  def self.up
    add_column :harps, :number_of_strings, :integer
    Harp.all.each do |h|
      h.update_attribute :number_of_strings, h.number_or_strings
    end
    remove_column :harps, :number_or_strings
  end

  def self.down
    add_column :harps, :number_or_strings, :integer
    Harp.all.each do |h|
      h.update_attribute :number_or_strings, h.number_of_strings
    end
    remove_column :harps, :number_of_strings
  end
end
