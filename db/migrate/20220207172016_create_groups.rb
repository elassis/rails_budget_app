class CreateGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :groups do |t|
      t.text :name
      t.text :icon
      t.timestamps
    end
  end
end
