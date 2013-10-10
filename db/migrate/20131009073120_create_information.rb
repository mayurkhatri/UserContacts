class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.references :users
      t.references :contacts
      t.timestamps
    end
  end
end
