class ChangeStringTypeToDatetime < ActiveRecord::Migration[6.1]
  def change
    change_column :events, :date_ocurrence, :datetime
  end
end
