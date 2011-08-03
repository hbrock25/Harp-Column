class Picture < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_taggable

  belongs_to :imageable, :polymorphic => true
  has_attached_file :asset, :styles => { :medium => "300x300>", :thumb => "100x100>" }
end
