class CreateGroupsExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :groups_expenses, id: false do |t|
      t.belongs_to :group
      t.belongs_to :expense

      t.timestamps
    end
  end
end
