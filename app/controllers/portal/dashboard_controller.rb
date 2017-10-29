class Portal::DashboardController < Portal::ApplicationController
  def index

    @posts = Post.last 5
    @visitors = Visitor.last 5
    @comments = Comment.last 3
    # @visitor_notifications = Notification.where(notifiable_type: 'Visitor').count
    
  end
end
