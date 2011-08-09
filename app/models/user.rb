class User < ActiveRecord::Base
  rails_admin
  has_friendly_id :name, :use_slug => true
    # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, :omniauthable

  has_attached_file :profile_pic, :styles => { :large => "124x124>", :medium => "64x64>", :thumb => "32x32>" }

    # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin
  validates_presence_of :name, :email

  has_and_belongs_to_many :instruments
  has_and_belongs_to_many :performances
  has_many  :picture_links, :as => :imageable
  has_many  :sound_clips, :as => :soundable
  has_many  :notebooks
  
  accepts_nested_attributes_for :notebooks

  accepts_nested_attributes_for :instruments

  def gravatar size = 64
    gravatar_image_tag(email.downcase, :alt => name.titleize, :gravatar => {:default => :monsterid })
  end

end
