class AddFieldsToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :title, :string, presence: true
    add_column :events, :description, :string, presence: true
    add_column :events, :date_ocurrence, :string, presence: true
    add_column :events, :location, :string, presence: true
  end
end
