class BlogsController < ApplicationController
  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
  end

  def create
    blog = Blog.new params[:blog].permit(:name, :content, :description, :author)
    if blog.save
      redirect_to '/'
    else
      render 'new'
    end
  end

  def show
    @blog = Blog.find(params[:id])
  end

end
