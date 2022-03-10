# frozen_string_literal: true

class BoardChannel < ApplicationCable::Channel
  def subscribed
    @channel = params[:channel]
    @room = params[:room]
    @room_channel = "#{@channel}_#{@room}"

    stream_from @room_channel
  end

  def unsubscribed; end
end
