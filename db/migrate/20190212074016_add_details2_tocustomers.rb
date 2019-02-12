class AddDetails2Tocustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :link, :string
    add_column :customers, :link2, :string
    add_column :customers, :auth, :string
    add_column :customers, :auth2, :string
    add_column :customers, :ipadd, :string
    add_column :customers, :ipadd2, :string
    add_column :customers, :root, :string
    add_column :customers, :root2, :string
    add_column :customers, :vdc2, :string
    add_column :customers, :vdc3, :string
  end
end
