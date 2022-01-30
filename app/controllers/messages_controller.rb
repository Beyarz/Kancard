class MessagesController < ApplicationController
  before_action :authenticate_user!

  def create
    @board = Board.find params_board_id
    @message = @board.messages.create permitted_params
    @channel = "BoardChannel"
    @room = @board.id
    @room_channel = "#{@channel}_#{@room}"

    if @message.save
      rendered_html = render partial: 'messages/message', locals: { message: @message }
      ActionCable.server.broadcast @room_channel, rendered_html
    else
      head :bad_request
    end
  end

  def destroy
    @board = Board.find params_board_id
    @note = @board.messages.find params[:id]
    @note.destroy

    redirect_to board_path @board
  end

  private
  def params_board_id
    params[:board_id]
  end

  def permitted_params
    params.require(:message).permit(:content)
  end
end
