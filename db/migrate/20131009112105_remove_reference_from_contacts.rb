class RemoveReferenceFromContacts < ActiveRecord::Migration
  def up
  	remove_column :contacts, :user_id
  end

  def down
    change_table :contacts do |t|
      t.references :user
  	end
  	add_index :contacts, :user_id
  end
end
