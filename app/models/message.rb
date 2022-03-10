# frozen_string_literal: true

# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :text
#  username   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer          not null
#
# Indexes
#
#  index_messages_on_board_id  (board_id)
#
# Foreign Keys
#
#  board_id  (board_id => boards.id)
#
class Message < ApplicationRecord
  belongs_to :board

  validates :content, presence: true, length: { minimum: 1 }
end
