class Admin::VideosController < ApplicationController
  respond_to(:html)

  def index
    @videos = Video.all
    respond_with([ :admin, @videos ])
  end

  def new
    @video = Video.new
    respond_with([ :admin, @video ])
  end

  def show
    @video = Video.find_by_slug(params[:id])
    respond_with([ :admin, @video ])
  end

  def edit
    @video = Video.find_by_slug(params[:id])
    respond_with([ :admin, @video ])
  end

  def create
    @video = Video.new(params[:video])
    if @video.save
      respond_with([ :admin, @video ])
    else
      render({ :action => :new })
    end
  end

  def update
    @video = Video.find_by_slug(params[:id])
    if @video.update_attributes(params[:video])
      respond_with([ :admin, @video ])
    else
      render({ :action => :edit })
    end
  end

  def destroy
    @video = Video.find_by_slug(params[:id])
    @video.destroy
    respond_with([ :admin, @video ])
  end
end
