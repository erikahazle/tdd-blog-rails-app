class CommentsController < ApplicationController
  def new
    @comment = Comment.new
    @blog = Blog.find(params[:blog_id])
  end

  def create
    blog = Blog.find(params[:blog_id])
    blog.comments << Comment.create(params[:comment].permit(:content))
    redirect_to blog_path(params[:blog_id])
  end
end
