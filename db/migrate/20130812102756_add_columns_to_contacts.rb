class AddColumnsToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :first_name, :string
    add_column :contacts, :last_name, :string
    add_column :contacts, :gender, :string
    add_column :contacts, :age, :number
    add_column :contacts, :phone_number, :number
    add_column :contacts, :email, :string
    add_column :contacts, :area, :string
  end
end
