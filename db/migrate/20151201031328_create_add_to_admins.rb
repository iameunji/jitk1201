class CreateAddToAdmins < ActiveRecord::Migration
  def change
    	add_column :admins, :video, :string, default: ""
    add_column :admins, :video_class, :string, default: ""
    end

end
