class Message < ApplicationRecord
  belongs_to :chat
  validates :text, length: { in: 1..2999 }
  validates :bot, presence: true
  scope :last_fifty, -> { order('created_at DESC').limit(50).all }
end
