class MainController < ApplicationController
  def home
  	@post = Post.new
  end
end
