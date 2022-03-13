class AddDepartureRefToFlight < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :departure, null: false, foreign_key: { to_table: :airports }
  end
end
