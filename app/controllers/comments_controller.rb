class CommentsController < ApplicationController
  def new
    if session[:user_id]
      @link = Link.find_by(id: params[:id])
      @all_comments = Comment.find_by(link_id: params[:id])

      render :comments
    else
      redirect_to :users_login_path
    end
  end

  def create
    @all_comments = Comment.find_by(link_id: params[:id])
    @comment = Comment.create(content: params[:content],
                        user_id: params[:user_id],
                        link_id: params[:link_id],
                        created_at: DateTime.now)
      render :comments
  end
end
