class Concert < ApplicationRecord
  belongs_to :artist
  belongs_to :venue
  has_many :tickets
  has_many :fans, through: :tickets
  delegate :name, to: :artist, prefix: true, allow_nil: true
  delegate :genre, to: :artist, prefix: true, allow_nil: true
  delegate :years_experience, to: :artist, prefix: true, allow_nil: true
  delegate :name, to: :venue, prefix: true, allow_nil: true
  delegate :location, to: :venue, prefix: true, allow_nil: true
  delegate :capacity, to: :venue, prefix: true, allow_nil: true

end
