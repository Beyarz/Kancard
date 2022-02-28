# == Schema Information
#
# Table name: cards
#
#  id         :integer          not null, primary key
#  title      :string(25)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer
#
# Indexes
#
#  index_cards_on_board_id  (board_id)
#  index_cards_on_title     (title)
#
class Card < ApplicationRecord
  belongs_to :board

  validates :title, presence: true, length: { minimum: 1 }
end
