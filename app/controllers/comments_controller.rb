class CommentsController < ApplicationController

  def create
    @list = List.find(params[:list_id])
    @comment = Comment.new(comment_params)
    @comment.list = @list
    @comment.save
    # No need for app/views/lists/create.html.erb
    if @comment.id
      redirect_to list_path(@list)
    else
      render 'lists/show', status: :unprocessable_entity
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :rating)
  end
end
