class Song < ActiveRecord::Base
  validates :title, presence: true
  validates :released, inclusion: { in: [ true, false ] }
  validates :release_year, presence: true, if: :released?
  validates :artist_name, presence: true
  #validate :song_uniq

  def released?
    released
  end

  #def song_uniq
  #  song = Song.find(params[:title])
  #  errors.add(:title, "You've alread entered this song.") if song.title == title && song.artist == artist && song.release_year == release_year
  #end
end
