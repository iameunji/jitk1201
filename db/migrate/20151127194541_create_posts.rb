class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :short
      t.text :img
      t.text :date
      t.integer :class_state
      t.integer :time_state
      t.string :am_pm

      t.timestamps null: false
    end
  end
end
