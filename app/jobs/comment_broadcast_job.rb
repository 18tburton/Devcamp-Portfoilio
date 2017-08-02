class CommentBroadcastJob < ApplicationJob
  queue_as :default
  
  def perform(comment)
    ActionCable.server.broadcast
  end
end