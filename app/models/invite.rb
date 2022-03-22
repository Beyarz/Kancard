# frozen_string_literal: true

# == Schema Information
#
# Table name: invites
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  board_id   :integer          not null
#  user_id    :integer
#
# Indexes
#
#  index_invites_on_board_id  (board_id)
#
# Foreign Keys
#
#  board_id  (board_id => boards.id)
#
class Invite < ApplicationRecord
  belongs_to :board

  validates :user_id, presence: true
  validates :board_id, presence: true
end
