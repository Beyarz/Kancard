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
class Message < ApplicationRecord
  belongs_to :board

  validates :content, presence: true, length: { minimum: 1 }
end
