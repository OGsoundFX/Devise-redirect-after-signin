class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    if request.referer.split("/").last == "sign_up"
      root_path
    else
      dashboard_path
    end
  end
end
