
class ChangeMenus < ActiveRecord::Migration[5.1]
    def up
      change_table :menus do |t|
        t.string :path
      end
    end
end