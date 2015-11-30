class AddToUsers < ActiveRecord::Migration
  def change
  	    add_column :users, :name, :string, default: ""
      	add_column :users, :mobile, :string, default: ""
  	    add_column :users, :admin, :boolean, default: false
  end
end
