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
class Board < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 4 }
end
