class BoardChannel < ApplicationCable::Channel
  def subscribed
    @channel = params[:channel]
    @room = params[:room]
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
