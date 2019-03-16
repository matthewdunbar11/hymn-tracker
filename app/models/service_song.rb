class ServiceSong < ApplicationRecord
  belongs_to :service
  belongs_to :song
end
