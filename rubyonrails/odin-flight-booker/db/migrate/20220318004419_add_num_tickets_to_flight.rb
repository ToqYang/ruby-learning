class AddNumTicketsToFlight < ActiveRecord::Migration[6.1]
  def change
    add_column :flights, :num_tickets, :integer
  end
end
