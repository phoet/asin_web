# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class SearchChannel < ApplicationCable::Channel
  def subscribed
    # stream_from "some_channel"
    stream_from "chat_#{params[:room]}"
  end

  def receive(data)
    ActionCable.server.broadcast "chat_#{params[:room]}", data
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
