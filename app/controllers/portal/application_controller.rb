class Portal::ApplicationController < ActionController::Base
    protect_from_forgery with: :exception
    layout 'portal'
    before_action :authorize
    def current_moderator
        @moderator ||= Moderator.find(session[:current_moderator_id]) if session[:current_moderator_id]            
        
    end
    def authorize
        unless current_moderator
            redirect_to '/login', alert: 'Đăng nhập để truy cập trang portal'
        end
    end
end