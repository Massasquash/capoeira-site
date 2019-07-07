class CommentsController < ApplicationController
  def create
        @comment = Comment.new
    @menu = Menu.find params[:menu_id]
    @menu.comments.create(comment_params)

    redirect_to menu_path(@menu)
  end
  
  def comment_params
    params.require(:comment).permit(:body)
  end
end
