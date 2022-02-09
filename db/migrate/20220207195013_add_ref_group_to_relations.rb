class AddRefGroupToRelations < ActiveRecord::Migration[6.1]
  def change
    add_reference :relations, :group, null: false, foreign_key: true
    add_reference :relations, :expense, null: false, foreign_key: true
  end
end
