class ClassesController < ApplicationController
  def index

  	@post = Post.where(class_state: 0)

  end
end
