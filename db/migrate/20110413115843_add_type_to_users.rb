class AddTypeToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :type, :string
    User.all.each do |user|
      user.type = "HcUser"
      user.save!
    end
    
    rename_column :user_pieces, :user_id, :hc_user_id
    rename_column :harps, :user_id, :hc_user_id
    rename_column :performances, :user_id, :hc_user_id

    # now make sure all the objects that need to have an owner
    # point to a valid owner
    superuser_id = Role.find_by_title("Superuser").users.first.id
    UserPiece.all.each do |user_piece|
      user_piece.hc_user_id = superuser_id
      user_piece.save!
    end
    Harp.all.each do |harp|
      harp.hc_user_id = superuser_id
      harp.save!
    end
    Performance.all.each do |performance|
      performance.hc_user_id = superuser_id
      performance.save!
    end
  end
  
  def self.down
    remove_column :users, :type
    rename_column :user_pieces, :hc_user_id, :user_id
    rename_column :harps, :hc_user_id, :user_id
    rename_column :performances, :hc_user_id, :user_id
  end
end
