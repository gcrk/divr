class CentersController < ApplicationController
  def index
    @centers = Center.all.order(:country)
  end

  def new
    @center = Center.new
  end

  def create
    center = Center.new center_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      center.photo = req["public_id"]
      center.save
    end
    redirect_to root_path
  end

  def edit
    @center = Center.find params[:id]
  end

  def destroy
    center = Center.find params[:id]
    center.destroy
    redirect_to root_path
  end

  def update
    center = Center.find params[:id]
    center.update center_params
    redirect_to root_path
  end

  def show
    @center = Center.find params[:id]
  end
  private
  def center_params
    params.require(:center).permit(:name, :country, :city, :photo, :website )
  end

end
