class CreateT1customers < ActiveRecord::Migration[5.2]
  def change
    create_table :t1customers do |t|
      t.string :name
      t.references :address_id, foreign_key: true
      t.string :email
      t.references :packer_id, foreign_key: true
      t.references :recipient_id, foreign_key: true

      t.timestamps
    end
  end
end
