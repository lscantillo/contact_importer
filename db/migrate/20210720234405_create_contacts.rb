class CreateContacts < ActiveRecord::Migration[6.1]
  def change
    create_table :contacts do |t|
      t.text :name
      t.date :birth
      t.text :phone
      t.text :address
      t.text :credit_card
      t.text :franchise
      t.text :email
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
