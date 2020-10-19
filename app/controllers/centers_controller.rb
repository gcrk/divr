class CentersController < ApplicationController
  def index
    @centers = Center.all
  end

  def new
    @center = Center.new
  end

  def edit
  end

  def show
    @center = Center.find params[:id]
  end
end
