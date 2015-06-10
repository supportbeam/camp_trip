class AddCityAndProvinceToCamps < ActiveRecord::Migration
  def change
    add_column :camps, :city, :string
    add_column :camps, :province, :string
    change_column :camps, :address, :string
  end
end
