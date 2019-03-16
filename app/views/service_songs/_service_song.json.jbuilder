json.extract! service_song, :id, :service_id, :song_id, :created_at, :updated_at
json.url service_song_url(service_song, format: :json)
