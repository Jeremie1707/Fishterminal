class CreateLoadOuts < ActiveRecord::Migration[5.2]
  def change
    create_table :load_outs do |t|
      t.string :our_reference
      t.references :t1_customer, foreign_key: true
      t.boolean :status_loaded
      t.datetime :departure_date
      t.string :truck_number
      t.string :trailer_number
      t.references :packer, foreign_key: true
      t.integer :total_cost
      t.integer :total_weight
      t.integer :total_number_of_boxes
      t.references :type_of_service, foreign_key: true

      t.timestamps
    end
  end
end
