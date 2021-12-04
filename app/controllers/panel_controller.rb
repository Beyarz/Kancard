class PanelController < ApplicationController
  before_action :authenticate_user!

  def dashboard
    # @cards = Card.all
  end

  def project
  end
end
