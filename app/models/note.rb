class Note < ApplicationRecord
  belongs_to :board
  acts_as_list

  validates :content, presence: true, length: { minimum: 1 }
end
