class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.references :passenger, null: false, index: true, foreign_key: true
      t.references :flight, null: false, index: true, foreign_key: true

      t.timestamps
    end
  end
end
