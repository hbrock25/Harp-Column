class User < ActiveRecord::Base
  rails_admin
    # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable,
  :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable, :omniauthable

    # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin
  validates_presence_of :name, :email

  has_and_belongs_to_many :instruments
  has_and_belongs_to_many :performances
  has_many  :pictures, :as => :imageable
  has_many  :sound_clips, :as => :soundable

  def gravatar size = 64
    gravatar_image_tag(email.downcase, :alt => name.titleize, :gravatar => {:default => :monsterid })
  end

end
