class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.string :zip
      t.string :message
      t.string :company
      t.string :state
      t.string :country

      t.timestamps null: false
    end
  end
end
