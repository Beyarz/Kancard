# ConsoleL 5.times { |x| ActionCable.server.broadcast("BoardChannel", {message: "Hello #{x}"}) }

class BoardChannel < ApplicationCable::Channel
  def subscribed
    # @board = Board.find params[:id]
    # @channel = params[:channel]
    # @room_channel = "#{params[:channel]}_#{@board.id}"
    stream_from 'BoardChannel'
  end

  def unsubscribed
  end

  def exchange(data)
    ActionCable.server.broadcast 'BoardChannel', message: data['message']
    # Message.create! content:data['message'], delivered:Date.new, board_id:43
  end
end
