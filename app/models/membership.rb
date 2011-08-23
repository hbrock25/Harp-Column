class Membership < ActiveRecord::Base
  belongs_to :group
  belongs_to :user
  belongs_to :role

  scope :by_user, lambda { |user|
    where('user_id = ?', user.id)
  }
  scope :by_group, lambda { |group|
    where('group_id = ?', group.id)
  }
  scope :by_role, lambda { |role|
    where('role_id = ?', role.id)
  }
end
