class VideosController < ApplicationController

  def index
    @videos = Video.all
  end

  # before_action :check_for_login

  def new
    @video = Video.new
  end

  def create
    @current_user.videos.create video_params
    redirect_to accounts_path
  end

  def edit
    @video = @current_user.videos.find params[:id]
  end

  def destroy
    video = @current_user.videos.find params[:id]
    video.destroy
    redirect_to accounts_path
  end

  def update
    video = @current_user.videos.find params[:id]
    video.update video_params
    redirect_to accounts_path
  end

  def show
    @video = Video.find params[:id]
    @video_url = @video.link.sub 'watch?v=', 'embed/'
  end

  private
  def video_params
    params.require(:video).permit(:name, :link)
  end
end
