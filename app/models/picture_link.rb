class PictureLink < ActiveRecord::Base

  belongs_to  :picture
  belongs_to  :imagable, :polymorphic => true

  scope :for_user, lambda { |user|
    joins(:picture).where('imageable_type = "User" AND imageable_id = ?',
                           user.id).select("DISTINCT `pictures`.*")
  }

end
