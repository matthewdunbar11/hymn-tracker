class CreateHymnBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :hymn_books do |t|
      t.string :name

      t.timestamps
    end
  end
end
