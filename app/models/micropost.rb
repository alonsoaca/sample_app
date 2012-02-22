class Micropost < ActiveRecord::Base
  
  attr_accessible :content
  belongs_to :user
  
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
  
  validates :content, presence: true, length: { maximum: 140 }
  
end
