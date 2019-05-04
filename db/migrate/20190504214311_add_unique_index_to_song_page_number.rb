class AddUniqueIndexToSongPageNumber < ActiveRecord::Migration[5.2]
  def change
    add_index :songs, [:page_number, :hymn_book_id], unique: true
  end
end
