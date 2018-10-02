class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.create(comment_params)
  end

  def edit

  end

  def update
    @comment = Comment.update(comment_params)
    @post = @comment.post
    redirect_to @post
  end

  def destroy
    @comment.destroy
    @post = @comment.post
    redirect_to @post
  end

  private

  def find_comment
    @comment = Comment.find_by(id: params[:id])
  end

  def comment_params
    params.require(:comment).permit(:content, :post_id)
  end

end
