class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @board = Board.find params_board_id
    @message = @board.messages.create permitted_params
  end

  private
  def params_board_id
    params[:board_id]
  end

  def permitted_params
    params.require(:message, :board_id).permit(:content, :board_id)
  end
end
