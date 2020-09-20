class PostsController < ApplicationController
  def index
    @product = Product.all
    @images = Image.all
  end
end
