class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.date :date
      t.string :remark
      t.text :movement
      t.text :music
      t.string :image

      t.timestamps
    end
  end
end
