class MainController < ApplicationController
  include MainHelper
  
  def index
    @posts = Post.all
  end
end
