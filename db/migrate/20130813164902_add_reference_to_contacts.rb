class AddReferenceToContacts < ActiveRecord::Migration
  def change
  	change_table :contacts do |t|
      t.references :user
  	end
  	add_index :contacts, :user_id
  end
end
