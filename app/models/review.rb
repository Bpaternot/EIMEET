class Review < ApplicationRecord
  belongs_to :tournament
  belongs_to :player
end
