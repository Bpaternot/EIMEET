class Game < ApplicationRecord
  belongs_to :tournament
  has_many :scores, dependent: :destroy
  has_many :players, through: :scores

  STEPS = ["group", "round16", "quarter", "semi", "final"]

  # validates :step, inclusion: {in: STEPS, allow_nil: false}
end
