class Portal::SettingsController < Portal::ApplicationController
  def new
    @setting = Setting.new
  end

  def create
    byebug
    @setting = Setting.new(settings_params)
    if @setting.save
      redirect_to edit_portal_setting_path(@setting)
    else
      flash[:alert] = "There was a problem creating setting"
      render 'new'
    end

  end

  def edit
  end

  def update
  end
  private
  def settings_params
    params.require(:setting).permit(:id, :site_name, :post_per_page, :under_maintenance, :prevent_commenting, :tag_visibility)
  end
end
