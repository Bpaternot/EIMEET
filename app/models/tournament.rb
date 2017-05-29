class Tournament < ApplicationRecord
  belongs_to :bar
  belongs_to :user
  has_many :players
end
