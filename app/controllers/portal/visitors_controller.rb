class Portal::VisitorsController < Portal::ApplicationController
  def index
    @visitors = Visitor.all.order(id: :desc).paginate(:page => params[:page], :per_page => 10) 
  end

  def destroy
    @visitor = Visitor.find(params[:id])
    @visitor.destroy
    redirect_back(fallback_location: portal_visitors_path, notice: 'Đã xảy ra lỗi')
  end
end
