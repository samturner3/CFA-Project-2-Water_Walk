class ReomoveLatLong < ActiveRecord::Migration[5.0]
  def change
    remove_column :locations, :lat
    remove_column :locations, :long
  end
end
