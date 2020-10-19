class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def new
  end

  def edit
  end

  def show
    @video = Video.find params[:id]
  end
end
