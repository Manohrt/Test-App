class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :last_name
      t.integer :age, null: false
      t.integer :gender, null: false

      t.timestamps
    end
  end
end
