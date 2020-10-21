class PagesController < ApplicationController
  def index
    @center = Center.all
    
  end
end
