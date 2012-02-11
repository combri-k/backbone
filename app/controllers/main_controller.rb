class MainController < ApplicationController
  def index
    @videos = Video.all
    @pictures = Picture.all
  end
end
