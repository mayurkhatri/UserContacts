class ChangeContactPhonenumberDataType < ActiveRecord::Migration
  def up
  	change_column :contacts, :phone_number, :integer
  end

  def down
  	change_column :contacts, :phone_number, :number
  end
end
