json.extract! song, :id, :name, :page_number, :hymn_book_id, :created_at, :updated_at
json.url song_url(song, format: :json)
