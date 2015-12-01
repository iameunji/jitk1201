class PostsController < ApplicationController



	  def index
  	 	@class_name = Hash[1 => "성인 정규 클래스", 2 => "성인 원데이 클래스", 3 => "요리책방 꼬르륵", 4 => "주니어 클래스", 5 => "PRIVATE CLASS", 6 => "정 In The Garden"]

	    @posts = Post.order("created_at DESC")

	    @admin = Admin.find(1)

	  end

	  def show
  	  	@class_name = Hash[1 => "성인 정규 클래스", 2 => "성인 원데이 클래스", 3 => "요리책방 꼬르륵", 4 => "주니어 클래스", 5 => "PRIVATE CLASS", 6 => "정 In The Garden"]


	    @post = Post.find(params[:id])
	  end

	  def new
	    @post = Post.new
	  end

	  def create
	    @post = Post.new(post_params)
	    
	    date = params[:post][:date]

	    unless date.nil?
	    	@post.date = nil
	    	arr_date = date.split(', ')
	    end
	    
	    @post.date=arr_date

	    if @post.save
	    	if @post.class_state==0 
	      		redirect_to "/classes", notice: "The post has been successfully created."
	      	else
	      		redirect_to "/classes/#{@post.class_state}/posts", notice: "The post has been successfully created."
	      	end
	    else
	      render action: "new"
	    end
	  end

	  def edit
	    @post = Post.find(params[:id])
	  end

	  def update
	    @post = Post.find(params[:id])



	    if @post.update_attributes(post_params)
	      redirect_to "/classes/#{@post.class_state}/posts", notice: "The post has been successfully updated."
	    else
	      render action: "edit"
	    end
	  end

	private

	  def post_params
	    params.require(:post).permit(:title, :short, :img, :body, :class_state, :time_state, :am_pm)
	  end
	

end
