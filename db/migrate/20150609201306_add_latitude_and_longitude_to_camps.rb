class AddLatitudeAndLongitudeToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :latitude, :decimal, precision: 9, scale: 6
    add_column :camps, :longitude, :decimal, precision: 9, scale: 6
  end
end
