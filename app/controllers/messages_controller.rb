class MessagesController < ApplicationController
  def index
    @message = Message.new
    @post = Post.find(params[:post_id])
  end

  def create
    @post = Post.find(params[:post_id])
    @message = @post.messages.new#(message_params)
  end
end
