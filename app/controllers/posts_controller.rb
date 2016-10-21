class PostsController < ApplicationController

  def latest
    @post =  Post.all.sort_by { |post| post.created_at }.reverse.first
    @bottom_posts = Post.all.reject {|posts| posts == @post}


  end

  def show
  @post = Post.find(params[:id].to_i)
  @bottom_posts = Post.all.sort_by { |post| post.created_at }.reverse.reject {|posts| posts == @post}
  end

  def index
  @post =  Post.all.sort_by { |post| post.created_at }.reverse.first
  @posts = Post.all
    if params[:search]
      @posts = Post.search(params[:search]).order("created_at DESC")
    else
      @posts = Post.all.order('created_at DESC')
    end
  end

end
