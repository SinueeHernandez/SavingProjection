class CreateMenus < ActiveRecord::Migration[5.1]
  def change
    create_table :menus do |t|
      t.string :name
      t.integer :level
      t.integer :parent
      t.string :icon

      t.timestamps
    end
  end
end
