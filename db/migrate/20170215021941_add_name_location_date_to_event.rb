class AddNameLocationDateToEvent < ActiveRecord::Migration[5.0]
  def change
    add_column :events, :name, :string
    add_column :events, :location, :string
    add_column :events, :date_and_time, :datetime
  end
end
