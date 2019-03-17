class AddServiceSongTypeToServiceSong < ActiveRecord::Migration[5.2]
  def change
    add_reference :service_songs, :service_song_type, foreign_key: true
  end
end
