class CreateCustomers < ActiveRecord::Migration[5.0]
  def change
    create_table :customers do |t|
      t.string :company
      t.integer :phone
      t.string :server
      t.string :remark

      t.timestamps
    end
  end
end
