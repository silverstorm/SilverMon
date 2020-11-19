class DataChannel < ApplicationCable::Channel
  def subscribed
    stream_from "data_#{current_user.token}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
