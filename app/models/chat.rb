class Chat < ApplicationRecord
  validates :title, length: { in: 3..50 }
  has_many :messages
  scope :last_fifty, -> { order('created_at DESC').limit(50).all }
end
