class AddSortToServiceSong < ActiveRecord::Migration[5.2]
  def change
    add_column :service_songs, :sort, :integer
  end
end
