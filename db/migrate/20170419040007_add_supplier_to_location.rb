class AddSupplierToLocation < ActiveRecord::Migration[5.0]
  def change
    add_reference :locations, :supplier, foreign_key: true
  end
end
