class Admin::PicturesController < AdminController
  respond_to(:html)

  def index
    @pictures = Picture.all
    respond_with([ :admin, @pictures ])
  end

  def new
    @picture = Picture.new
    respond_with([ :admin, @picture ])
  end

  def show
    @picture = Picture.find_by_slug(params[:id])
    respond_with([ :admin, @picture ])
  end

  def edit
    @picture = Picture.find_by_slug(params[:id])
    respond_with([ :admin, @picture ])
  end

  def create
    @picture = Picture.new(params[:picture])
    if @picture.save
      respond_with([ :admin, @picture ])
    else
      render({ :action => :new })
    end
  end

  def update
    @picture = Picture.find_by_slug(params[:id])
    if @picture.update_attributes(params[:picture])
      respond_with([ :admin, @picture ])
    else
      render({ :action => :edit })
    end
  end

  def destroy
    @picture = Picture.find_by_slug(params[:id])
    @picture.destroy
    respond_with([ :admin, @picture ])
  end
end
