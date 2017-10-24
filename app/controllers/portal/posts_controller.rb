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
  end

  def edit
  end

  def update
  end

  def show
    @post = Post.find(params[:id])

  end

  def destroy
  end
end
