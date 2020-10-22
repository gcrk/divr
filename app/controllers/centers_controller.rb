class CentersController < ApplicationController
  def index
    @centers = Center.all.order(:country)
  end

  def new
    @center = Center.new
  end

  def create
    center = @current_user.centers.create center_params
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      center.photo = req["public_id"]
      center.save
    end
    redirect_to accounts_path
  end

  def edit
    @center = @current_user.centers.find params[:id]
  end

  def destroy
    center = @current_user.centers.find params[:id]
    center.destroy
    redirect_to accounts_path
  end

  def update
    center = @current_user.centers.find params[:id]
    if params[:file].present?
      req = Cloudinary::Uploader.upload(params[:file])
      center.photo = req["public_id"]
      center.update center_params
    end
    redirect_to accounts_path
  end

  def show
    @center = Center.find params[:id]
  end
  private
  def center_params
    params.require(:center).permit(:name, :country, :city, :photo, :website )
  end

end
