class Portal::MessagesController < Portal::ApplicationController
  def index
    @messages = Message.all.order(id: :desc).paginate(:page => params[:page], :per_page => 10) 
  end

  def show
  end

  def update
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_back(fallback_location: portal_messages_path, notice: 'Đã xóa thành công')
  end
end
