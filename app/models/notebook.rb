class Notebook < ActiveRecord::Base
  rails_admin
  
  has_many :entries
  belongs_to  :user
  
  validates_presence_of :user
  
  def notebook_type
    "Practice Journal" #we need some logic here to spell out what sort notebook this is based upon privacy, associations, etc.
  end
  
end
