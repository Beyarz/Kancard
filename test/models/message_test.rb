# == Schema Information
#
# Table name: messages
#
#  id         :integer          not null, primary key
#  content    :text
#  board_id   :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  username   :string
#
require "test_helper"

class MessageTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
