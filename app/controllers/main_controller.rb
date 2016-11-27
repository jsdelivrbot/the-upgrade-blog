class MainController < ApplicationController
  include MainHelper
  
  def index
    @posts = Post.published
  end
  
  def our_story
  end
  
  def contributors
  end
end
