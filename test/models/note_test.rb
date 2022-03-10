# frozen_string_literal: true

# == Schema Information
#
# Table name: notes
#
#  id               :integer          not null, primary key
#  content          :string
#  position         :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  board_id         :integer          not null
#  parent_column_id :string
#
# Indexes
#
#  index_notes_on_board_id  (board_id)
#
# Foreign Keys
#
#  board_id  (board_id => boards.id)
#
require "test_helper"

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
