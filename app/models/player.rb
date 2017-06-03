class Player < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :reviews, dependent: :destroy
  has_many :scores, dependent: :destroy

POSITIONS = ["A1", "A2", "B1", "B2", "C1", "C2", "D1", "D2", "E1", "E2", "F1", "F2", "G1", "G2", "H1", "H2", "HU1", "HU2", "HU3", "HU4", "HU5", "HU6", "HU7", "HU8", "Q1", "Q2", "Q3", "Q4", "S1", "S2", "W"]

# POSITIONS_ROUND16: ["A1", "A2", "B1", "B2", "C1", "C2", "D1", "D2", "E1", "E2", "F1", "F2", "G1", "G2", "H1", "H2"]
# POSITIONS_QUARTER: ["HU1", "HU2", "HU3", "HU4", "HU5", "HU6", "HU7", "HU8"]
# POSITIONS_SEMI: ["Q1", "Q2", "Q3", "Q4"]
# POSITIONS_FINAL: ["S1", "S2"]
# POSITION_FIN: ["W"]

# POSITION_QUARTER : gagnants des huitièmes et donc joueurs des quarts :
# HU1 = gagnant entre A1 et B2
# HU2 = gagnant entre A2 et B1
# HU3 = gagnant entre C1 et B2
# HU4 = gagnant entre C2 et D1
# HU5 = gagnant entre E1 et F2
# HU6 = gagnant entre E2 et F1
# HU7 = gagnant entre G1 et H2
# HU8 = gagnant entre G2 et H1

# POSITION_SEMI : gagnants des quarts et donc joueurs des semi :
# Q1 = gagnant entre HU1 et HU2
# Q2 = gagnant entre HU3 et HU4
# Q3 = gagnant entre HU5 et HU6
# Q4 = gagnant entre HU7 et HU8

# POSITION_FINAL : gagnants des semi et donc finalistes:
# S1 = gagnant entre Q1 et Q2
# S2 = gagnant entre Q3 et Q4

# POSITION_FIN: gagnant du tournois
# W = winner entre S1 et S2



  validates :position, inclusion: {in: POSITIONS, allow_nil: true}

  #validates :ps4
  validates :controller_ps4, presence: true
  validates :fifa_game_ps4, presence: true

end
