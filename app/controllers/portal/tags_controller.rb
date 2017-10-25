class Portal::TagsController < Portal::ApplicationController
  def new
    @tag = Tag.new
    @tags = Tag.all.order(id: :desc)
  end

  def create
    tags_params[:name].split(',').map do |n|
      Tag.new(name: n).save
    end
    redirect_to new_portal_tag_url, notice: 'Tags đã được tạo'
  end

  def edit
    @tag = Tag.find(params[:id])
  end

  def update
    @tag = Tag.find(params[:id])
    if @tag.update tags_params
      redirect_to new_portal_tag_url, notice: 'Cập nhật thành công'
    else
      flash[:alert] = 'Xảy ra lỗi'
      render 'edit'
    end
  end

  def show
  end

  def destroy
    @tag = Tag.find(params[:id])
    @tag.destroy
    redirect_to new_portal_tag_url, notice: 'Đã xóa'
  end
  private
  def tags_params
    params.require(:tag).permit(:id, :name)
  end
end
