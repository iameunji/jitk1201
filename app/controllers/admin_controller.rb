class AdminController < ApplicationController




  def index
    if current_user.admin==false
      redirect_to "/"
    end


  end

  def oneday
    if current_user.admin==false
      redirect_to "/"
    end

  	@admin=Admin.find(1)
  end

  def update_oneday
    if current_user.admin==false
      redirect_to "/"
    end


  	admin = Admin.find(1)

  	admin.update(oneday: params[:admin][:oneday])
  	
  	redirect_to '/admin'

  end

    def video_update
    admin = Admin.first
    
    admin.update(video: params[:video], video_class: params[:class_state])

    redirect_to '/admin', notice: "변경 완료"
  end


  def currentapply

    @apply = Apply.new
    @post = Post.find(params[:id].to_i)
    
  end


  def confirm_apply

    unless params[:confirm].nil?
      params[:confirm].each do |c|
        @apply = Apply.find(c.to_i)

        @apply.success = true
        @apply.save

      end 
    end

    redirect_to :back
    
  end

  def cancel_apply

    unless params[:cancel].nil?
      params[:cancel].each do |c|
        @apply = Apply.find(c.to_i)

        @apply.success = false
        @apply.save

      end 
    end

    redirect_to :back
    
  end





end