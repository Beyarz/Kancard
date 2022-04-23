# frozen_string_literal: true

class MessagesController < ApplicationController
  before_action :authenticate_user!

  # @route POST /boards/:board_id/messages (board_messages)
  def create
    @board = Board.find params_board_id
    @message = @board.messages.create permitted_params
    @current_user = current_user

    @channel = "BoardChannel"
    @room = @board.id
    @room_channel = "#{@channel}_#{@room}"

    if @message.save
      rendered_html = render partial: "messages/message", locals: { message: @message }
      ActionCable.server.broadcast @room_channel, rendered_html
    else
      head :bad_request
    end
  end

  # @route DELETE /boards/:board_id/messages/:id (board_message)
  def destroy
    @board = Board.find params_board_id
    @note = @board.messages.find params[:id]
    @note.destroy

    redirect_to board_path(@board), status: :see_other
  end

  private
    def params_board_id
      params[:board_id]
    end

    def permitted_params
      params.require(:message).permit(:content, :username)
    end
end
