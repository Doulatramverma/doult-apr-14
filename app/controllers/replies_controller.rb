class RepliesController < ApplicationController
	before_action do
    @comment = Comment.find(params[:comment_id])
  end

  # def index 
  #   byebug
  #   @replies = @comment.replies
  #   @reply = @comment.replies.new
  # end

  # def new
  #   @reply = @comment.replies.new
  # end

  def create
    @reply =  Reply.new(:body=> params[:replie][:body] ,:comment_id=> params[:replie][:comment_id] )
    @reply.save
    flash[:notice]= "replies created"
    redirect_to "/blogs/#{params[:blog_id]}"
    #redirect somewhere
  end
  # private
  #   def reply_params
  #     params.require(:reply).permit(:body)
  # end

end

 # before_action do
 #    @comment = Comment.find(params[:comment_id])
 #  end

 #  def index
 #    @replies = @comment.replies
 #    @reply = @comment.replies.new
 #  end

 #  def new
 #    @reply = @comment.replies.new
 #  end

 #  def create
 #    @reply = @comment.replies.new(reply_params)
 #    #redirect somewhere
 #  end