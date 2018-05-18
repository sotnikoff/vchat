class Chat < ApplicationRecord
  validates :title, length: { in: 3..50 }
  has_many :messages
end
