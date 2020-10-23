class OwnedGame < ApplicationRecord
  belongs_to :user
  belongs_to :game

  has_many :consoles, as: :platform, dependent: :destroy

  has_many :notes
end
