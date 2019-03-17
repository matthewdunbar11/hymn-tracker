class ServiceSong < ApplicationRecord
  belongs_to :service
  belongs_to :song
  belongs_to :service_song_type

  include RailsSortable::Model
  set_sortable :sort
end
