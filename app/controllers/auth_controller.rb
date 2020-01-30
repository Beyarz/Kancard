class AuthController < ApplicationController
  def index
    @project_title = "Kancard".freeze
  end

  def login
    @project_title = "Kancard".freeze
    # render "login"
  end

  def register
    @project_title = "Kancard".freeze
    # render "register"
  end
end
