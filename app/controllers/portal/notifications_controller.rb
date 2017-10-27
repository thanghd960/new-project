class Portal::NotificationsController < Portal::ApplicationController
  def index
    @visitor_notifications = Notification.where(notifiable_type: 'Visitor').order(id: :desc)
    @comment_notifications = Notification.where(notifiable_type: 'Comment').order(id: :desc)
  end

  def destroy
    @notifiable= Notification.find(params[:id])
    @notifiable.destroy
    redirect_back(fallback_location: portal_notifications_path, notice: 'Notification was deleted')
  end
  def delete_all
    Notification.delete_all
    redirect_back(fallback_location: portal_notifications_path, notice: 'All notification was deleted')
  end
end
