class CreateInformation < ActiveRecord::Migration
  def change
    create_table :information do |t|
      t.references :user
      t.references :contact
      t.timestamps
    end
  end
end
