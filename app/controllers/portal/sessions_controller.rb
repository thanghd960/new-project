class Portal::SessionsController < Portal::ApplicationController
  before_action :authorize, except: [:new, :create]
  def new
  end

  def create
    @moderator = Moderator.find_by(username: params[:username]).try(:authenticate, params[:password])
    if @moderator
      session[:current_moderator_id] = @moderator.id
      
      redirect_to portal_moderators_url, notice: 'Đăng nhập thành công'
    else
      flash[:alert] = 'Đã xảy ra lỗi, vui lòng đăng nhập lại'
      render :new
    end
  end

  def destroy
    session[:current_moderator_id] = nil
    redirect_to '/login', notice: 'Đăng xuất thành công'
  end
end
