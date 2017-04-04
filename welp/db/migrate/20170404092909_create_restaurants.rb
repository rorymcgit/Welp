class CreateRestaurants < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.text :location

      t.timestamps null: false
      # t.has_many :reviews
    end
  end
end
