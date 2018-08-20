class Ticket < ApplicationRecord
  belongs_to :fan
  belongs_to :concert
end
