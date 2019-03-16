class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.integer :page_number
      t.references :hymn_book, foreign_key: true

      t.timestamps
    end
  end
end
