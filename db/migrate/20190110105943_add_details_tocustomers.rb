class AddDetailsTocustomers < ActiveRecord::Migration[5.0]
  def change
   add_column :customers, :vdc, :string
   add_column :customers, :contractdate, :string
   add_column :customers, :monitoring, :string
   add_column :customers, :cancellationdate, :string
   add_column :customers, :product, :string
   add_column :customers, :level, :string
   add_column :customers, :sheet, :string
   add_column :customers, :deliverytime, :string
   add_column :customers, :day, :string
   add_column :customers, :company2, :string
   add_column :customers, :company3, :string
   add_column :customers, :company4, :string
   add_column :customers, :departmentname, :string
   add_column :customers, :departmentname2, :string
   add_column :customers, :departmentname3, :string
   add_column :customers, :name, :string
   add_column :customers, :name2, :string
   add_column :customers, :name3, :string
   add_column :customers, :email, :string
   add_column :customers, :email2, :string
   add_column :customers, :email3, :string
   add_column :customers, :phone2, :string
   add_column :customers, :phone3, :string
  end
end
