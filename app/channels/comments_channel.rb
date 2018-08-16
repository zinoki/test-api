class CommentsChannel < ApplicationCable::Channel
  def subscribed
    post = Post.find(params[:id])
    stream_for post
  end
end

CommentsChannel.broadcast_to(@post, @comment)
