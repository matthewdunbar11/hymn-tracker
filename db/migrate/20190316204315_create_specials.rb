class CreateSpecials < ActiveRecord::Migration[5.2]
  def change
    create_table :specials do |t|
      t.references :service, foreign_key: true
      t.references :singer, foreign_key: true

      t.timestamps
    end
  end
end
