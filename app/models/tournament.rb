class Tournament < ApplicationRecord
  belongs_to :bar
  belongs_to :user
  has_many :players, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :games, dependent: :destroy


  TOURNAMENT_TYPE = ["small", "medium", "large"]
  STATUS = ["pending", "cancelled", "ready", "past"]
  STEP =  ["group", "round16", "quarter", "semi", "final"]
  NUMBER_PLAYERS = [8, 16, 32]
  NUMBER_CONSOLES = [2, 4, 8]
  NUMBER_GAMES = [15, 31, 63]

  # validates :date, presence: true
  validates :tournament_type, inclusion: { in: TOURNAMENT_TYPE, allow_nil: false }
  validates :step, inclusion: { in: STEP, allow_nil: false }
  # validates :status, inclusion: { in: STATUS }
  # validates :number_players, inclusion: { in: NUMBER_PLAYERS }
  # validates :number_consoles, inclusion: { in: NUMBER_CONSOLES }
  # validates :number_games, inclusion: { in: NUMBER_GAMES }
end

