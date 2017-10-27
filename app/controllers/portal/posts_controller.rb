class Portal::PostsController < Portal::ApplicationController
  def index
    if params[:search].present?
      @posts = Post.matching_title_or_content(params[:search]).paginate(:page => params[:page], :per_page => 10) 
    else
      @posts = Post.all.order(id: :desc).paginate(:page => params[:page], :per_page => 10) 
    end
    # .limit(10).page params[:page]
    # @posts = @posts.limit(10).page(params[:page])
    # @posts = Kaminari.paginate_array(Post.all.first(10)).page(params[:page])
  end

  def new
    @post = Post.new 
  end

  def create
    @post = Post.new(post_params)
    @post.moderator_id = current_moderator.id
    if @post.save
      redirect_to portal_posts_url, notice: 'Đăng bài thành công!'
    else
      flash[:alert] = 'Xảy ra lỗi'
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update(post_params)
      redirect_to portal_posts_url, notice: 'Cập nhật thành công'
    else
      flash[:alert] = 'Đã xảy ra lỗi'
      render 'edit'
    end
  end

  def show
    @post = Post.find(params[:id])

  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    # redirect_to portal_posts_path, notice: 'Xóa bài viết thành công'
    redirect_back(fallback_location: portal_visitors_path, notice: 'Đã xóa thành công')
  end

  private  
    def post_params
      params.require(:post).permit(:id, :title, :content, :publish, tag_ids: [])
    end
end
