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
class Note < ApplicationRecord
  belongs_to :board
  acts_as_list

  validates :content, presence: true, length: { minimum: 1 }
end
