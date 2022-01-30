# ConsoleL 5.times { |x| ActionCable.server.broadcast("BoardChannel", {message: "Hello #{x}"}) }

class BoardChannel < ApplicationCable::Channel
  def subscribed
    @channel = params[:channel]
    @room = params[:board_id]
    @room_channel = "#{@channel}_#{@room}"

    stream_from @room_channel
  end

  def unsubscribed
  end

  def exchange(data)
    ActionCable.server.broadcast @room_channel, message: data['message']
    message = Message.create content: data['message'], board_id: @room
    message.save
  end
end
