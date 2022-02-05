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
require 'test_helper'

class CardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
