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

  has_and_belongs_to_many :instruments
  has_and_belongs_to_many :performances

  has_many :notebooks
  has_many :picture_links, :as => :imageable
  has_many :sound_clips, :as => :soundable
  has_many :groups, :through => :memberships
  has_many :memberships
  
  accepts_nested_attributes_for :instruments
  accepts_nested_attributes_for :notebooks
  validates_presence_of :name, :email

  after_create :create_group

  # perform the 3 table join in a way that will
  # let us also call include and other filters.
  scope :owners_of_group, lambda { |group|
    joins(:memberships).where('memberships.role_id = ? AND memberships.group_id = ?', Role.owner.id, group.id).select("DISTINCT `users`.*")
  }
  scope :admins_of_group, lambda { |group|
    joins(:memberships).where('memberships.role_id = ? AND memberships.group_id = ?', Role.admin.id, group.id).select("DISTINCT `users`.*")
  }
  scope :readers_of_group, lambda { |group|
    joins(:memberships).where('memberships.role_id = ? AND memberships.group_id = ?', Role.read.id, group.id).select("DISTINCT `users`.*")
  }
  scope :writers_of_group, lambda { |group|
    joins(:memberships).where('memberships.role_id = ? AND memberships.group_id = ?', Role.write.id, group.id).select("DISTINCT `users`.*")
  }

  def gravatar size = 64
    gravatar_image_tag(email.downcase, :alt => name.titleize, :gravatar => {:default => :monsterid })
  end

  def is_role_in_group? role, group
    Membership.by_user(self).by_role(role).by_group(group) != nil
  end

  def is_member_of? group
    Membership.by_user(self).by_group(group) != nil
  end

  def roles_in group
    roles = []
    Membership.by_user(self).by_group(group).each do |membership|
      roles << membership.role
    end
    roles
  end

  def roleset_in group
    self.roles_in(group).inject(0) { |result, role| result | role.binary}
  end

  def default_group
    Group.find_by_name slug
  end

  private

  def create_group
    g = Group.new :name => slug

    if g.save
      Membership.create :group_id => g.id, :user_id => self.id, :role_id => Role.owner.id
    else
      raise "Error saving group, investigate"
    end

  end

end
