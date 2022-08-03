class Song < ApplicationRecord
  belongs_to  :artist
  validates :title, :length, :play_count, presence: true
  has_many :playlist_songs
  has_many :playlists, through: :playlist_songs

  def self.song_count
    Song.count
  end
end
