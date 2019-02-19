class Fan < ApplicationRecord
  has_many :tickets
  has_many :concerts, through: :tickets
  has_secure_password

  validates :username, uniqueness: true
  validates :password, length: {minimum: 3}
  validates :password, length: {maximum: 25}
  validates :balance, numericality: {less_than: 400}
  validates :balance, numericality: {greater_than: 0}
  validates :name, presence: true
  validates :name, length: {maximum: 25}
  validates :age, numericality: {maximum: 99}
  validates :age, numericality: {minimum: 1}
  validates :favorite_artist, length: {maximum: 35}

end
