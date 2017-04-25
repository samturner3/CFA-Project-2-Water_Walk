class AddAvatarToSuppliers < ActiveRecord::Migration[5.0]
  def change
    add_column :suppliers, :avatar, :string
  end
end
