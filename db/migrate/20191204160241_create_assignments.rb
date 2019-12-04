class CreateAssignments < ActiveRecord::Migration[5.2]
  def change
    create_table :assignments do |t|
      t.string :our_reference
      t.string :ingoing_order_ref
      t.string :invoice_ref
      t.string :other_ref
      t.references :recipient, foreign_key: true
      t.integer :number_of_boxes
      t.integer :number_of_pallets
      t.integer :net_weight
      t.integer :cost
      t.integer :diverse_cost

      t.timestamps
    end
  end
end
