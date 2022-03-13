class AddArrivaleRefToFlight < ActiveRecord::Migration[6.1]
  def change
    add_reference :flights, :arrival, null: false, foreign_key: { to_table: :airports }
  end
end
