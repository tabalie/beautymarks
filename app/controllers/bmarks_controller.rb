class BmarksController < ApplicationController
  def index
    @bmarks = Bmark.all
  end

  def show
    @bmark = Bmark.find(params[:id])
  end

  def new
    @bmark = Bmark.new
  end

def create
  @bmark = Bmark.new(params.require(:bmark).permit(:title, :body))
    if @bmark.save
      flash[:notice] = "beautymark was saved."
      redirect_to @bmark
    else
      flash[:error] = "There was an error saving this beautymark. Please try again."
      render :new
    end
end

def edit
  end
end
