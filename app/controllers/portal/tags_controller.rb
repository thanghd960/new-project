class Portal::TagsController < Portal::ApplicationController
  def new
    @tag = Tag.new
  end

  def create
    tags_params[:name].split(',').map do |n|
      Tag.new(name: n).save
    end
    redirect_to new_portal_tag_url, notice: 'Tags đã được tạo'
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end
  private
  def tags_params
    params.require(:tag).permit(:id, :name)
  end
end
