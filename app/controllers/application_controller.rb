# frozen_string_literal: true

class ApplicationController < ActionController::Base
  @@title = "Kancard"

  def self.title
    @@title
  end
end
