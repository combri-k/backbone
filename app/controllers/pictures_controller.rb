class PicturesController < ApplicationController
  respond_to(:html, :json)

  def index
    if request.xhr?
      respond_with(Picture.all)
    end
  end

  def show
    @picture = Picture.find_by_slug(params[:id])
    respond_with(@picture)
  end
end
