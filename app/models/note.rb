class Note < ApplicationRecord
  belongs_to :board

  validates :content, presence: true, length: { minimum: 1 }
end
