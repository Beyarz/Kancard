class Card < ApplicationRecord
  belongs_to :board

  validates :title, presence: true, length: { minimum: 1 }
end
