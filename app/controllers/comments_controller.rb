def new
 @all_comments = Comment.all
 render :new 
end

def create
  @comment = Link.comments.create(content = _____,
                      user_id = _______,
                      written_at = _______)

  redirect_to :root  
end

