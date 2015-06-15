class CommentsController < ApplicationController
  def new
    @link = Link.find(params[:id])
    @all_comments = @link.comments

    render :comments
  end

  def create
    @link = Link.find(params[:id])

    if session[:user_id]
      @comment = @link.comments.create(content: params[:content],
                                       user_id: session[:user_id])
      flash[:notice] = 'Comment posted.'
    else
      flash[:alert] = 'Only logged in users can post comments.'
    end

    redirect_to comments_new_path(@link)
  end
end
