class BmarksController < ApplicationController
  def index
    @bmarks = Bmark.all
  end

  def show
    @bmark = Bmark.all
    @bmark = Bmark.find(params[:id])
  end

  def new
    @bmark = Bmark.new
  end

  def create
    @bmark = Bmark.new(params.require(:bmark).permit(:title, :body))
    @bmark.user = current_user
    if @bmark.save
      flash[:notice] = "beautymark was saved."
      redirect_to @bmark
    else
      flash[:error] = "There was an error saving this beautymark. Please try again."
      render :new
    end
  end

  def edit
    @bmark = Bmark.find(params[:id])
  end

  def update
    @bmark = Bmark.find(params[:id])
    if @bmark.update_attributes(params.require(:bmark).permit(:title, :body))
      flash[:notice] = "beautymark was updated"
      redirect_to @bmark
    else
      flash[:error] = "There was an error saving this beautymark. Please try again."
      render :edit
    end
  end
end
