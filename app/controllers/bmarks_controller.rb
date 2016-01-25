class BmarksController < ApplicationController
  def index
    @bmarks = Bmark.all
  end

  def show
    @bmark = Bmark.find(params[:id])
  end

  def new
  end

  def edit
  end
end
