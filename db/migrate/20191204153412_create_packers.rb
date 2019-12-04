class CreatePackers < ActiveRecord::Migration[5.2]
  def change
    create_table :packers do |t|
      t.string :packer_number
      t.string :name
      t.string :address

      t.timestamps
    end
  end
end
