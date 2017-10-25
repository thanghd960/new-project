class Portal::CommentsController < Portal::ApplicationController
  def index
    if params[:search].present?
      @comments = Comment.matching_fullname_or_message(params[:search]).paginate(:page => params[:page], :per_page => 10) 
    else
      @comments = Comment.where(status: to_bool(params[:status])).paginate(:page => params[:page], :per_page => 10) 
    end
    # byebug
    
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(status: params[:status])
      redirect_back(fallback_location: portal_comments_path, notice: 'Cập nhật thành công')
    else
      redirect_back(fallback_location: portal_comments_path, notice: 'Đã xảy ra lỗi')
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy   
    redirect_back(fallback_location: portal_comments_path, notice: 'Xóa thành công')
  end
end
