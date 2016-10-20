class AboutController < ApplicationController

  def index

    @message = "This is what we are all about!"
    @post = Post.new(title:  "About")

  end

end
