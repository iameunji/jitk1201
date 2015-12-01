class HomeController < ApplicationController
  def index
  	@posts = Post.all

  end

  def intro

  end

  def calendar

  	@posts = Post.all
  	
  end
end
