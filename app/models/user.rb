class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  devise :database_authenticatable, :registerable, #:omniauthable,
         :recoverable, :rememberable, :trackable, :validatable,
         :token_authenticatable, :encryptable, :confirmable, :lockable, :timeoutable and :omniauthable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :name, :admin
  validates_presence_of :name, :email

  rails_admin

  def gravatar size = 64
    gravatar_image_tag(email.downcase, :alt => name.titleize, :gravatar => {:default => :monsterid })
  end

end
