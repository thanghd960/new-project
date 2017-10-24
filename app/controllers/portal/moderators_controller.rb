class Portal::ModeratorsController < Portal::ApplicationController
    def index        
        @moderators = Moderator.all
    end
    def edit
        @moderator = Moderator.find(params[:id])
    end
    def update
        
        @moderator = Moderator.find(params[:id])
        if @moderator.update(moderator_params)
            flash[:notice] = "Cập nhật thành công"
            redirect_to portal_moderators_path
        else
            flash[:arlert] = "Đã xảy ra lỗi"
            render 'edit'
        end
    end
    private
    def moderator_params
        params.require(:moderator).permit(:id, :fullname, :username, :password)
    end
end