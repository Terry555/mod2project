class Concert < ApplicationRecord
  belongs_to :artist
  belongs_to :venue
  belongs_to :ticket
end
