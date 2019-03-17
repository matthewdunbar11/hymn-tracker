class ServiceSong < ApplicationRecord
  belongs_to :service
  belongs_to :song

  include RailsSortable::Model
  set_sortable :sort
end
