class CreateServices < ActiveRecord::Migration[5.2]
  def change
    create_table :services do |t|
      t.date :date
      t.references :service_type, foreign_key: true

      t.timestamps
    end
  end
end
