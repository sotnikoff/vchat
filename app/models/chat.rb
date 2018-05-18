class Chat < ApplicationRecord
  validates :title, length: { in: 3..10 }
end
