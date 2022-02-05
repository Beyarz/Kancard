# == Schema Information
#
# Table name: boards
#
#  id          :integer          not null, primary key
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  name        :string
#  description :string
#  owner       :string
#  owner_id    :string
#  invited     :string
#
class Board < ApplicationRecord
  has_many :cards, dependent: :destroy
  has_many :notes, dependent: :destroy
  has_many :messages, dependent: :destroy

  validates :name, presence: true, length: { minimum: 2 }
  validates :description, presence: true, length: { minimum: 4 }
end
