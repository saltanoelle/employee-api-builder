class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.integer :employee_id

      t.timestamps
    end
  end
end
