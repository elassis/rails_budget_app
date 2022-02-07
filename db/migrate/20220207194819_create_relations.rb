class CreateRelations < ActiveRecord::Migration[6.1]
  def change
    create_table :relations, id: false do |t|

      t.timestamps
    end
  end
end
