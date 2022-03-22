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
require "test_helper"

class InviteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
