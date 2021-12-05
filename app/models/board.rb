class Board < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :notes, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 4 }
end
