class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|

    	t.boolean :oneday, default: false

    	t.text :intro_text
    	t.text :intro_img
    	t.text :class_text

      t.timestamps null: false
    end
  end
end
