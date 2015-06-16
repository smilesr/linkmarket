class CommentsController < ApplicationController
  def new
    @link = Link.find(params[:id])
    @all_comments = @link.comments
    render :comments
  end

  def create
    @link = Link.find(params[:id])
    if current_user
      @comment = @link.comments.create(content: params[:content],
                                       user_id: current_user)
      flash[:notice] = 'Comment posted.'
    else
      flash[:alert] = 'Only logged in users can post comments.'
    end
    redirect_to comments_new_path(@link)
  end
end
