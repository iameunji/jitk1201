class AdminController < ApplicationController
  def index
  end

  def oneday
  	@admin=Admin.find(1)
  end

  def update_oneday

	admin = Admin.find(1)

	admin.update(oneday: params[:admin][:oneday])
	
	redirect_to '/admin'

  end

end
