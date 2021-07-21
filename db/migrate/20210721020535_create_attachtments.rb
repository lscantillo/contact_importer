class CreateAttachtments < ActiveRecord::Migration[6.1]
  def change
    create_table :attachtments do |t|
      t.text :name
      t.integer :status

      t.timestamps
    end
  end
end
