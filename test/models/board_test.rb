# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  description :string
#  invited     :string
#  name        :string
#  owner       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  owner_id    :string
#
# Indexes
#
#  index_boards_on_description  (description)
#  index_boards_on_name         (name)
#
require 'test_helper'

class BoardTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
