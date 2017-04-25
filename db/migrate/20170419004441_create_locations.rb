class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.decimal :lat
      t.decimal :long
      t.string :description
      t.string :three_words

      t.timestamps
    end
  end
end
