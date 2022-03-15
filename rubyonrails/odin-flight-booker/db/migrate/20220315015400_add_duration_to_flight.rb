class AddDurationToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :duration, :datetime
    add_column :flights, :departure_time, :datetime
  end
end
