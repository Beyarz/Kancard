class Card < ApplicationRecord
  belongs_to :board

  validates :title, presence: true, length: { minimum: 2 }
  validates :content, presence: true, length: { minimum: 4 }
end
