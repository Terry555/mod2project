class Ticket < ApplicationRecord
  belongs_to :fan
  belongs_to :concert
  delegate :price, to: :concert, prefix: true, allow_nil: true

  def concert_artist
    @concert = Concert.all.find{|concert| concert.id == self.concert_id}
    @concert.artist_name
  end

end
