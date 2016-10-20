class PostsController < ApplicationController

  def latest
    @posts =  Post.all.sort_by { |post| post.created_at }.reverse.first
  end

end
