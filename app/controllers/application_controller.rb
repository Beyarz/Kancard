class ApplicationController < ActionController::Base
  @@title = "Kancard"

  private
  def self.title
    @@title
  end
end
