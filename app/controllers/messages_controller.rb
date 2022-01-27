class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @board = Board.find params[:board_id]
    @message = @board.messages.create message_params
  end

  private
  def message_params
    params.require(:message).permit(:content)
  end
end
