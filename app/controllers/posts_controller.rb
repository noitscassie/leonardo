class PostsController < ApplicationController

  def new
  end

  before_action :authenticate_user!
  def create
    @post = Post.create(image: params[:image], description: params[:description])
    redirect_to root_url
  end
end
