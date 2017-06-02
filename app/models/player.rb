class Player < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :reviews, dependent: :destroy
  #validates :ps4
  validates :controller_ps4, presence: true
  validates :fifa_game_ps4, presence: true
end
