class HomeController < ApplicationController
  def index
  end

  def intro
  	@admin = Admin.find(1)
  end

  def calendar

  	@posts = Post.all
  	
  end
end
