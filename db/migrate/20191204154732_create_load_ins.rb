class CreateLoadIns < ActiveRecord::Migration[5.2]
  def change
    create_table :load_ins do |t|
      t.string :our_reference
      t.references :t1_customer, foreign_key: true
      t.boolean :status_in
      t.datetime :arrival_date
      t.string :truck_number
      t.string :trailer_number
      t.references :packer, foreign_key: true
      t.integer :total_cost
      t.integer :total_weight
      t.integer :total_number_of_boxes

      t.timestamps
    end
  end
end
