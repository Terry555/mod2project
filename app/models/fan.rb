class Fan < ApplicationRecord
  has_many :tickets
  has_many :concerts, through: :tickets
end
