class ChangeAdminBool < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :user_type, :string
    add_column :users, :admin, :boolean, default: false, null: false
    add_column :users, :supplier, :boolean, default: false, null: false
    add_reference :users, :supplier, foreign_key: true
  end
end
