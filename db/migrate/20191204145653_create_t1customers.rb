class CreateT1customers < ActiveRecord::Migration[5.2]
  def change
    create_table :t1customers do |t|
      t.string :name
      t.references :address, foreign_key: true
      t.string :email
      t.references :packer, foreign_key: true
      t.references :recipient, foreign_key: true

      t.timestamps
    end
  end
end
