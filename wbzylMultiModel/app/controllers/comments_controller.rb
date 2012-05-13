class CommentsController < ApplicationController
  before_filter do
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = @post.comments.build(params[:comment])
    @comment.save
    respond_with(@post, @comment, :location => @post)
  end
end