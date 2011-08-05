class Picture < ActiveRecord::Base
  rails_admin
  acts_as_commentable
  acts_as_taggable

  has_many  :picture_links

  has_attached_file :asset,
                    :styles => { :medium => "300x300>", :thumb => "100x100>" },
                    :url => "/assets/:class/:id/:attachment/:basename-:style.:extension",
                    :path => ":rails_root/public/system/:class/:attachment/:id/:style/:basename.:extension"
end
