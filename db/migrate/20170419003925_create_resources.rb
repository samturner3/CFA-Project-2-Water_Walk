class CreateResources < ActiveRecord::Migration[5.0]
  def change
    create_table :resources do |t|
      t.string :type_of
      t.integer :stock
      t.string :units

      t.timestamps
    end
  end
end
