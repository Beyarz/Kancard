# == Schema Information
#
# Table name: notes
#
#  id               :integer          not null, primary key
#  content          :string
#  board_id         :integer          not null
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  parent_column_id :string
#  position         :integer
#
require "test_helper"

class NoteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
