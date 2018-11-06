class ChangeTypeIntToStringPhone < ActiveRecord::Migration[5.0]
  def change
    change_column :customers, :phone, :string
  end
end
