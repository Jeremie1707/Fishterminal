class CreateRecipients < ActiveRecord::Migration[5.2]
  def change
    create_table :recipients do |t|
      t.string :name
      t.references :address, foreign_key: true
      t.string :email

      t.timestamps
    end
  end
end
