class CreateLoans < ActiveRecord::Migration[6.1]
  def change
    create_table :loans do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.integer :amount
      t.integer :code

      t.timestamps
    end
  end
end
