class PicturesController < ApplicationController
  respond_to(:html, :atom)

  def show
    @picture = Picture.find_by_slug(params[:id])
    respond_with(@picture)
  end
end
