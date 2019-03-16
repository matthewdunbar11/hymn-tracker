class CreateServiceSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :service_songs do |t|
      t.references :service, foreign_key: true
      t.references :song, foreign_key: true

      t.timestamps
    end
  end
end
