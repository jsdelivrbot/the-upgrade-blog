class MainController < ApplicationController
  include MainHelper
  
  def index
    @posts = Post.published
  end
end
