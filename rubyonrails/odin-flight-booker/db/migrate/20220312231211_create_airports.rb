class CreateAirports < ActiveRecord::Migration[6.1]
  def change
    create_table :airports do |t|
      t.integer :code, default: 0, null: false

      t.timestamps
    end
  end
end
