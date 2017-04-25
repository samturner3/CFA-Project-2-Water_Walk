class AddLocationToResource < ActiveRecord::Migration[5.0]
  def change
    add_reference :resources, :location, foreign_key: true
  end
end
