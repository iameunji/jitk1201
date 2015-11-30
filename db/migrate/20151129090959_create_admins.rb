class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

    	t.boolean :oneday, default: false

    	t.text :intro_text
    	t.text :intro_img
    	t.text :class_1
    	t.text :class_2
    	t.text :class_3
    	t.text :class_4
    	t.text :class_5

      t.timestamps null: false
    end
  end
end
