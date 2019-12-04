class CreateAddresses < ActiveRecord::Migration[5.2]
  def change
    create_table :addresses do |t|
      t.string :street
      t.string :street_number
      t.string :post_code
      t.string :country
      t.string :phone_number

      t.timestamps
    end
  end
end
