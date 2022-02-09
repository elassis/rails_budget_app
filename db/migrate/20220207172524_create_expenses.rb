class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.integer :author_id
      t.text :name
      t.integer :amount

      t.timestamps
    end
  end
end
