class CommentsController < ApplicationController
def new
  if session[:user_id]
    @link = Link.create(link_id: params[:id])
    @all_comments = @link.comments.all
    render :new
  else
    redirect_to :users_login_path
  end
end

def create
  @comment = @link.comments.create(content: params[:content],
                      user_id: user.id,
                      created_at: DateTime.now)
  redirect_to :root  
end

