class CommentsController < ApplicationController
  def new
    @comment = Comment.new
  end
  
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    
    if @comment.save
      redirect_to topics_path, success: 'コメント投稿に成功しました'
    else
      flash.now[:danger] = 'コメント投稿に失敗しました'
      render :new
    end
  end
  
  private
  
  def comment_params
    params.require(:comment).permit(:body, :topic_id)
  end
end
