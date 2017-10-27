class Portal::MessagesController < Portal::ApplicationController
  def index
    @messages = Message.all.order(id: :desc).paginate(:page => params[:page], :per_page => 10) 
  end

  def show
    @message = Message.find(params[:id])
    @message.mark_read
  end

  def update
    @message = Message.find(params[:id])
    @message.update(status: params[:status])
    redirect_back(fallback_location: portal_messages_path)
  end

  def destroy
    @message = Message.find(params[:id])
    @message.destroy
    redirect_back(fallback_location: portal_messages_path, notice: 'Đã xóa thành công')
  end
end
