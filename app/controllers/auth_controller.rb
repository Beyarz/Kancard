class AuthController < ApplicationController
  def index
    if user_signed_in?
      redirect_to panel_dashboard_path
    end
  end
end
