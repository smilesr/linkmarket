class CommentsController < ApplicationController
def new
  @link = Link.create(link_id: params[:id])
  @all_comments = @link.comments.all
  render :new 
  end
end

def create
  @comment = Link.comments.create(content = params[:content],
                      user_id = user.id,
                      created_at = DateTime.now)
  redirect_to :root  
end

