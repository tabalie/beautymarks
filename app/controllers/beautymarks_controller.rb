class BeautymarksController < ApplicationController
  def index
    @beautymarks = Beautymarks.all
  end

  def show
  end

  def new
  end

  def edit
  end
end
