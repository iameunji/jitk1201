class CreateApplies < ActiveRecord::Migration
  def change
    create_table :applies do |t|
   		
   		t.integer :user_id
    	t.integer :post_id
    	t.boolean :success, default: false
    	t.string :users
    	t.string :user_deposit
      t.string :am_pm
      t.string :email
      t.string :mobile


      t.timestamps null: false
    end
  end
end
