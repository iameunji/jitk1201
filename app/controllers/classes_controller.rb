class ClassesController < ApplicationController



  def index

  	@post = Post.where(class_state: 0)

  end

  def apply
  	@class_name = Hash[1 => "성인 정규 클래스", 2 => "성인 원데이 클래스", 3 => "요리책방 꼬르륵", 4 => "주니어 클래스", 5 => "PRIVATE CLASS", 6 => "정 In The Garden"]

  	@post = Post.find(params[:id])

  	@apply = Apply.new

  end

  def create_apply

  	apply = Apply.new
  	unless current_user.nil?
  		apply.user_id = current_user.id
  	end
  	apply.post_id = params[:id]
  	apply.users = Array.new(params[:name_count].to_i-1)

  	0.upto(params[:name_count].to_i-1) do |i|
  		apply.users[i]=params["name_"+(i+1).to_s]
  	end

  	apply.user_deposit = params[:user_deposit]
  	#apply.am_pm = params[:apply][:am_pm]
  	apply.mobile = params[:mobile]
  	apply.email = params[:email]
  	
  	if apply.save
    	redirect_to "/classes/completion/#{apply.id}", notice: "작성이 완료되었습니다."
    else
    	redirect_to :back, notice: "작성 실패."
    end


  end

  def completion

  	@res = Apply.find(params[:id].to_i)



  end

end
