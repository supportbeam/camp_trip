class CreateCamps < ActiveRecord::Migration
  def change
    create_table :camps do |t|
      t.string :name
      t.text :address
      t.text :description

      t.timestamps null: false
    end
  end
end
