class AddForeignKeyToContacts < ActiveRecord::Migration
  def change
    add_foreign_key(:contacts, :users, "user_id")
#    add_index :contacts, :user_id
  end
end
