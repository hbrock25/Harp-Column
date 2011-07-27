class Picture < ActiveRecord::Base
  acts_as_commentable

  belongs_to :imageable, :polymorphic => true
  has_attached_file :asset, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
