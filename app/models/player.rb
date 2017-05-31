class Player < ApplicationRecord
  belongs_to :user
  belongs_to :tournament
  has_many :reviews, dependent: :destroy
end
